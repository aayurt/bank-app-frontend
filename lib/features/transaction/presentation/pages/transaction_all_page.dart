import 'package:abc_banking_app/features/transaction/presentation/widgets/list_all_transaction.dart';
import 'package:abc_banking_app/routes/routes_constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransactionAllPage extends StatefulWidget {
  const TransactionAllPage({Key? key}) : super(key: key);

  @override
  _TransactionAllPageState createState() => _TransactionAllPageState();
}

class _TransactionAllPageState extends State<TransactionAllPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(children: [
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
                "All Transaction List",
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
                  BoxConstraints(maxHeight: height - 140, maxWidth: width - 32),
              child: const Expanded(child: ListAllTransaction())),
        ),
      ])),
    );
  }
}
