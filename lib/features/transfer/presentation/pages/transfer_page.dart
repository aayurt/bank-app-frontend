import 'package:abc_banking_app/core/widgets/card/custom_card.dart';
import 'package:abc_banking_app/features/home/data/models/user_model.dart';
import 'package:abc_banking_app/features/transfer/presentation/pages/transfer_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/shared_pref/shared_pref.dart';
import '../../../../routes/routes_constant.dart';

class TransferPage extends StatefulWidget {
  final UserModel? userData;

  const TransferPage({Key? key, this.userData}) : super(key: key);

  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  int? sortNumber;
  int? accountNumber;
  String? accountName;
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(milliseconds: 0), () async {
      final myAccountapi = await SharedPrefService.getUser();
      setState(() {
        accountNumber = myAccountapi.accountNumber;
        sortNumber = 123456;
        accountName = "${myAccountapi.firstName} ${myAccountapi.lastName}";
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(children: [
        const SizedBox(
          width: 20,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            SizedBox(
                height: 25,
                width: 25,
                child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go(RoutesConstant.home);
                    },
                    child: const Icon(Icons.arrow_back))),
            const Expanded(
              child: Text(
                "Transfer",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              width: 25,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: height, maxWidth: width - 32),
            child: SizedBox(
                width: 500,
                height: 80,
                child: CustomCardWidget(
                    children: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 10,
                        ),
                        Text("Pay From"),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          sortNumber.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          accountNumber.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(accountName ?? ""),
                      ],
                    ),
                  ],
                ))),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
          child: TransferForm(
              userData: widget.userData, accountNumber: accountNumber),
        ),
      ])),
    );
  }
}
