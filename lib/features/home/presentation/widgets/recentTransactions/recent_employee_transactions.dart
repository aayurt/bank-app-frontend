import 'package:flutter/material.dart';

import '../../../../transaction/presentation/widgets/list_transaction.dart';

class RecentEmployeeTransaction extends StatefulWidget {
  const RecentEmployeeTransaction({Key? key}) : super(key: key);

  @override
  _RecentEmployeeTransactionState createState() =>
      _RecentEmployeeTransactionState();
}

class _RecentEmployeeTransactionState extends State<RecentEmployeeTransaction> {
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
            return SizedBox(
                height: height - 100, child: const ListTransaction(items: 5));
          }),
        ],
      ),
    );
  }
}
