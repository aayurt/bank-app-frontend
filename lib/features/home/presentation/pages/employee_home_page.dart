import 'dart:convert';

import 'package:abc_banking_app/core/shared_pref/shared_pref.dart';
import 'package:abc_banking_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:abc_banking_app/features/home/presentation/bloc/home_event.dart';
import 'package:abc_banking_app/features/home/presentation/widgets/recentTransactions/recent_employee_transactions.dart';
import 'package:abc_banking_app/routes/routes_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../bloc/home_state.dart';

class EmployeeHomePage extends StatefulHookWidget {
  const EmployeeHomePage({Key? key}) : super(key: key);

  @override
  State<EmployeeHomePage> createState() => _EmployeeHomePageState();
}

class _EmployeeHomePageState extends State<EmployeeHomePage> {
  int? sortNumber;
  int? accountNumber;
  String? accountName;
  String? cardType;
  bool? frozen;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 0), () async {
      final homeBloc = BlocProvider.of<HomeBloc>(
        context,
      );
      final myAccountapi = await SharedPrefService.getUser();
      if (myAccountapi.role == "employee") {
        homeBloc.add(
          const HomeEvent.onGetAll(),
        );
      } else {
        homeBloc.add(
          const HomeEvent.onGetMe(),
        );
      }
      setState(() {
        accountNumber = myAccountapi.accountNumber;
        sortNumber = 123456;
        accountName = "${myAccountapi.firstName} ${myAccountapi.lastName}";
        frozen = myAccountapi.frozen;
        cardType = myAccountapi.type;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    buildEmployee(state) {
      return Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // GestureDetector(
              //   child: const Text("Go to User mode"),
              //   onTap: () {
              //     GoRouter.of(context).go(RoutesConstant.ho);
              //   },
              // ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: (() {
                          GoRouter.of(context).go(RoutesConstant.register);
                        }),
                        child: Row(
                          children: const [
                            Icon(Icons.add),
                            Text("Add a customer")
                          ],
                        )),
                    TextButton(
                        onPressed: (() {
                          GoRouter.of(context).go(RoutesConstant.peopleUpdate);
                        }),
                        child: Row(
                          children: const [
                            Icon(Icons.list),
                            Text("List customers")
                          ],
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: (() {
                          GoRouter.of(context).go(RoutesConstant.transaction);
                        }),
                        child: Row(
                          children: const [
                            Icon(Icons.list),
                            Text("List my transactions")
                          ],
                        )),
                    TextButton(
                        onPressed: (() {
                          GoRouter.of(context)
                              .go(RoutesConstant.transactionAll);
                        }),
                        child: Row(
                          children: const [
                            Icon(Icons.list),
                            Text("List all transactions")
                          ],
                        )),
                  ],
                ),
              ),
              const RecentEmployeeTransaction(),
            ],
          ),
        ),
      );
    }

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
                  if (state.user.user?.role == "user") {
                    // GoRouter.of(context).go(RoutesConstant.home);
                  }
                }
              },
              builder: (context, state) {
                if (state is HomeLoadingState || state is HomeInitialState) {
                  return const CircularProgressIndicator();
                } else if (state is HomeLoadedState) {
                  return buildEmployee(state);
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
