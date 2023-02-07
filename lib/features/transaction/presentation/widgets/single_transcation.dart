import 'package:abc_banking_app/core/shared_pref/shared_pref.dart';
import 'package:abc_banking_app/core/widgets/card/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';

import '../../data/models/transaction_response_model.dart';

class SingleTranscation extends StatefulHookWidget {
  final TransactionResponseModel transaction;

  const SingleTranscation({Key? key, required this.transaction})
      : super(key: key);

  @override
  State<SingleTranscation> createState() => _SingleTranscationState();
}

class _SingleTranscationState extends State<SingleTranscation> {
  int? accountNumber;

  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(const Duration(milliseconds: 0), () async {
      final accountNumberapi = await SharedPrefService.getUser();
      setState(() {
        accountNumber = accountNumberapi.accountNumber;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
        boxShadow: const BoxShadow(),
        children: Row(
          children: [
            const SizedBox(
                height: 50,
                width: 50,
                child: Icon(Icons.panorama_photosphere_select_rounded)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      (accountNumber == widget.transaction.accRecipientId)
                          ? (widget.transaction.accSenderId.toString() == ""
                              ? "Deposited"
                              : widget.transaction.accSenderId.toString())
                          : (widget.transaction.accRecipientId.toString() == ""
                              ? "Withdrawn"
                              : widget.transaction.accRecipientId.toString()),
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      widget.transaction.createdAt!.isNotEmpty
                          ? giveDateTime(widget.transaction.createdAt)
                          : "",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      widget.transaction.description!.isNotEmpty
                          ? "Ref: ${widget.transaction.description}"
                          : "",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.transaction.accRecipientId == accountNumber
                    ? Text(
                        "£ ${NumberFormat("###,###.00").format(widget.transaction.amount)}",
                        style: const TextStyle(fontSize: 22),
                      )
                    : Text(
                        "£ -${NumberFormat("###,###.00").format(widget.transaction.amount)}",
                        style: const TextStyle(fontSize: 22),
                      ),
                widget.transaction.accRecipientId == accountNumber
                    ? const Icon(
                        Icons.arrow_upward,
                        color: Colors.greenAccent,
                      )
                    : const Icon(
                        Icons.arrow_downward,
                        color: Colors.redAccent,
                      )
              ],
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ));
  }
}

String giveDateTime(String? datetimeString) {
  final getDate = datetimeString!.isNotEmpty
      ? DateTime.parse(datetimeString)
      : DateTime.now();
  String convertedDateTime =
      "${getDate.year.toString()}-${getDate.month.toString().padLeft(2, '0')}-${getDate.day.toString().padLeft(2, '0')} ${getDate.hour.toString().padLeft(2, '0')}-${getDate.minute.toString().padLeft(2, '0')}";
  return convertedDateTime;
}
