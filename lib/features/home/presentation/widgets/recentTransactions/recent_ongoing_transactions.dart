import 'package:flutter/material.dart';

import '../../../../transaction/presentation/widgets/list_transaction.dart';

class RecentOngoingTransaction extends StatefulWidget {
  const RecentOngoingTransaction({Key? key}) : super(key: key);

  @override
  _RecentOngoingTransactionState createState() =>
      _RecentOngoingTransactionState();
}

class _RecentOngoingTransactionState extends State<RecentOngoingTransaction> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Recent Transactions",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxHeight > 600) {
              print(constraints.maxHeight);
              print("LG");
            } else {
              print(constraints.maxHeight);

              print("SM");
            }
            return SizedBox(
                height: height - 500, child: const ListTransaction(items: 5));
          }),
        ],
      ),
    );
  }
}
