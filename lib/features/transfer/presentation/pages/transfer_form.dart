import 'package:abc_banking_app/core/constants/constants.dart';
import 'package:abc_banking_app/core/network/api_list.dart';
import 'package:abc_banking_app/core/network/api_service.dart';
import 'package:abc_banking_app/features/home/data/models/user_model.dart';
import 'package:abc_banking_app/routes/routes_constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/textfield/custom_textfield.dart';

final _formKey = GlobalKey<FormState>();

class TransferForm extends StatefulWidget {
  final UserModel? userData;
  final int? accountNumber;
  const TransferForm({Key? key, this.userData, this.accountNumber})
      : super(key: key);

  @override
  _TransferFormState createState() => _TransferFormState();
}

class _TransferFormState extends State<TransferForm> {
  final sortNoController = TextEditingController();
  final accountNoController = TextEditingController();
  final amountController = TextEditingController();
  final refController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    if (widget.userData != null) {
      sortNoController.text = widget.userData!.sortCode ?? "";
      accountNoController.text = widget.userData!.accountNumber.toString();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    showSuccess(newcontext) {
      showDialog(
        context: newcontext,
        barrierDismissible: true,
        builder: (BuildContext acontext) {
          return AlertDialog(
            title: const Text('Success'),
            content: const Text('Successfully transfered'),
            actions: <Widget>[
              TextButton(
                child: const Text('Continue'),
                onPressed: () async {
                  Navigator.of(acontext).pop();

                  GoRouter.of(context).go(RoutesConstant.splash);
                },
              ),
            ],
          );
        },
      );
    }

    void onSubmitButtonPressed(BuildContext context) async {
      if (_formKey.currentState!.validate()) {
        final String baseUrl = BankConstants.baseUrl;
        final ApiService request = ApiService();
        final response = await request
            .post(ApiEndpoint(baseUrl, ApiList.getAllTransactions, {}), data: {
          "accSenderId": widget.accountNumber,
          "accRecipientId": accountNoController.text,
          "amount": amountController.text,
          "description": refController.text
        });

        if (response.statusCode == 200) {
          showSuccess(context);
        }

        // GoRouter.of(context).go(RoutesConstant.home);
      }
    }

    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextfield(
              controller: sortNoController,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              hintText: 'Enter sort no. here',
              labelText: "Sort no.",
              validator: (text) {
                return _validateSortNo(text ?? "");
              }),
          CustomTextfield(
              controller: accountNoController,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              hintText: 'Enter account no. here',
              labelText: "Account no.",
              validator: (text) {
                return _validateAccountNumber(text ?? "");
              }),
          CustomTextfield(
              controller: amountController,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              hintText: 'Enter amount here',
              labelText: "Amount",
              validator: (text) {
                return _validateAmount(text ?? "");
              }),
          CustomTextfield(
              controller: refController,
              hintText: 'Enter reference here',
              labelText: "Ref",
              validator: (text) {
                return _validateRef(text ?? "");
              }),
          Row(
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                    right: BorderSide(
                        color: Colors.grey.withOpacity(0.9), width: 1),
                  )),
                  child: TextButton(
                      onPressed: () {
                        _onCancelButtonPressed(context);
                      },
                      child: const Text("Cancel")),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                    right: BorderSide(
                        color: Colors.grey.withOpacity(0.9), width: 1),
                  )),
                  child: TextButton(
                      onPressed: () {
                        onSubmitButtonPressed(context);
                      },
                      child: const Text("Continue")),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

_validateAccountNumber(String value) {
  if (value.isEmpty) {
    return "Please enter a account number";
  }

  return null;
}

_validateSortNo(String value) {
  if (value.isEmpty) {
    return "Please enter sort number";
  }

  return null;
}

_validateAmount(String value) {
  if (value.isEmpty) {
    return "Please enter some amount";
  }
  if (double.tryParse(value) == null) {
    return 'Please enter a valid decimal value';
  }
  return null;
}

_validateRef(String value) {
  if (value.isEmpty) {
    return "Please enter some reference";
  }

  return null;
}

_onLoginButtonPressed(BuildContext context) {
  if (_formKey.currentState!.validate()) {
    _showSuccess(context);
    // GoRouter.of(context).go(RoutesConstant.home);
  }
}

_onCancelButtonPressed(BuildContext context) {
  if (_formKey.currentState!.validate()) {
    GoRouter.of(context).go(RoutesConstant.home);
  }
}

_showSuccess(context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Success'),
        content: const Text('Successfully transferred'),
        actions: <Widget>[
          TextButton(
            child: const Text('Continue'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
