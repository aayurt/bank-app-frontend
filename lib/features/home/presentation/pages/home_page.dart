import 'dart:convert';

import 'package:abc_banking_app/core/constants/constants.dart';
import 'package:abc_banking_app/core/constants/files.dart';
import 'package:abc_banking_app/core/shared_pref/shared_pref.dart';
import 'package:abc_banking_app/core/widgets/card/custom_card.dart';
import 'package:abc_banking_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:abc_banking_app/features/home/presentation/bloc/home_event.dart';
import 'package:abc_banking_app/features/home/presentation/widgets/recentTransactions/recent_transactions.dart';
import 'package:abc_banking_app/routes/routes_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../transaction/presentation/bloc/transaction_bloc.dart';
import '../../../transaction/presentation/bloc/transaction_state.dart';
import '../bloc/home_state.dart';
import '../widgets/quickTransfer/quick_transfer.dart';

class HomePage extends StatefulHookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? sortNumber;
  int? accountNumber;
  String? accountName;
  String? cardType;
  bool? frozen;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    useEffect((() {
      Future.delayed(const Duration(milliseconds: 0), () async {
        final homeBloc = BlocProvider.of<HomeBloc>(
          context,
        );
        final myAccountapi = await SharedPrefService.getUser();
        homeBloc.add(
          const HomeEvent.onGetMe(),
        );
        homeBloc.add(
          const HomeEvent.onGetAll(),
        );

        setState(() {
          accountNumber = myAccountapi.accountNumber;
          sortNumber = 123456;
          accountName = "${myAccountapi.firstName} ${myAccountapi.lastName}";
          frozen = myAccountapi.frozen;
          cardType = myAccountapi.type;
        });
      });
      return null;
    }), []);

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "ABC Bank",
                    style: TextStyle(fontSize: 24),
                  ),
                  GestureDetector(
                    onTap: (() {
                      SharedPrefService.clearAll().then((value) {
                        context.go(RoutesConstant.splash);
                      });
                    }),
                    child: const Text(
                      "Logout",
                      style: TextStyle(fontSize: 16, color: Colors.redAccent),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BlocConsumer<HomeBloc, HomeState>(
              listener: (context, state) async {
                if (state is HomeLoadedState) {
                  await SharedPrefService.storeToken(
                      SharedPrefKey.userData, json.encode(state.user.user));
                  // if (state.user.user?.role == "employee") {
                  //   GoRouter.of(context).go(RoutesConstant.employeehome);
                  // }
                }
              },
              builder: (context, state) {
                if (state is HomeLoadingState || state is HomeInitialState) {
                  return const CircularProgressIndicator();
                } else if (state is HomeLoadedState) {
                  return Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          // GestureDetector(
                          //   child: const Text("Employee "),
                          //   onTap: () {
                          //     GoRouter.of(context)
                          //         .go(RoutesConstant.employeehome);
                          //   },
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 16.0, left: 16, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ConstrainedBox(
                                  constraints: BoxConstraints(
                                      maxHeight: height, maxWidth: width - 32),
                                  child: SizedBox(
                                      width: 500,
                                      height: 250,
                                      child: CustomCardWidget(
                                          children: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: const [
                                                        SizedBox(
                                                          child: Image(
                                                              image: AssetImage(
                                                                  MyAssets
                                                                      .bankLogo)),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  width: 20,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "Classic",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyLarge
                                                                ?.copyWith(
                                                                    fontSize:
                                                                        22),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            "[${cardType ?? "Debit"} Card]",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyLarge
                                                                ?.copyWith(
                                                                    fontSize:
                                                                        18),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 4,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            BankConstants
                                                                .sortNumber,
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyMedium
                                                                ?.copyWith(),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            "${state.user.user?.accountNumber}",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyMedium
                                                                ?.copyWith(),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 16,
                                                      ),
                                                      BlocBuilder<
                                                          TransactionBloc,
                                                          TransactionState>(
                                                        builder:
                                                            (context, state) {
                                                          if (state
                                                              is TransactionLoadedState) {
                                                            final allTransaction =
                                                                state
                                                                    .transactions;
                                                            double totalDepo =
                                                                0;

                                                            double totalWith =
                                                                0;
                                                            for (var i = 0;
                                                                i <
                                                                    allTransaction
                                                                        .length;
                                                                i++) {
                                                              final currentTransaction =
                                                                  allTransaction[
                                                                      i];
                                                              if (currentTransaction
                                                                      .accRecipientId ==
                                                                  accountNumber) {
                                                                totalDepo = totalDepo +
                                                                    (currentTransaction
                                                                            .amount ??
                                                                        0);
                                                              } else {
                                                                totalWith = totalWith +
                                                                    (currentTransaction
                                                                            .amount ??
                                                                        0);
                                                              }
                                                            }
                                                            return Row(
                                                              children: [
                                                                Text(
                                                                  "£ ${NumberFormat("###,###.00").format((totalDepo - totalWith) < 0 ? 1000 : (totalDepo - totalWith))}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          32),
                                                                ),
                                                              ],
                                                            );
                                                          }
                                                          return Row(
                                                            children: const [
                                                              Text(
                                                                "£ 0",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        32),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      ),
                                                      Row(
                                                        children: [
                                                          frozen != null
                                                              ? (frozen!
                                                                  ? const Text(
                                                                      "Frozen")
                                                                  : const Text(
                                                                      ""))
                                                              : const SizedBox()
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Flexible(
                                                    child: GestureDetector(
                                                  onTap: () {
                                                    context.go(RoutesConstant
                                                        .transfer);
                                                  },
                                                  child: Column(
                                                    children: const [
                                                      SizedBox(
                                                        height: 40,
                                                        width: 40,
                                                        child: Image(
                                                            image: AssetImage(
                                                                MyAssets
                                                                    .banktransfer)),
                                                      ),
                                                      Text(
                                                        "Transfer",
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                                Flexible(
                                                    child: GestureDetector(
                                                  onTap: () {
                                                    context.go(RoutesConstant
                                                        .transaction);
                                                  },
                                                  child: Column(
                                                    children: const [
                                                      SizedBox(
                                                        height: 40,
                                                        width: 40,
                                                        child: Image(
                                                            image: AssetImage(
                                                                MyAssets
                                                                    .banktransaction)),
                                                      ),
                                                      Text(
                                                        "Transactions",
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                                Flexible(
                                                    child: GestureDetector(
                                                  onTap: () {
                                                    context.go(
                                                        RoutesConstant.people);
                                                  },
                                                  child: Column(
                                                    children: const [
                                                      SizedBox(
                                                        height: 40,
                                                        width: 40,
                                                        child: Image(
                                                            image: AssetImage(
                                                                MyAssets
                                                                    .group)),
                                                      ),
                                                      Text(
                                                        "People",
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                              ],
                                            )
                                          ],
                                        ),
                                      ))),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const QuickTransfer(),
                          const RecentTransaction(),
                        ],
                      ),
                    ),
                  );
                } else {
                  return const SizedBox(
                    child: Text("Error"),
                  );
                }
              },
            ),
          ],
        )));
  }
}
