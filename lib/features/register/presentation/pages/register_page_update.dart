import 'package:abc_banking_app/features/register/presentation/pages/register_form_update.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../routes/routes_constant.dart';
import '../../../home/data/models/user_model.dart';

class RegisterPageUpdate extends StatefulWidget {
  final UserModel? userModelData;

  const RegisterPageUpdate({Key? key, this.userModelData}) : super(key: key);

  @override
  _RegisterPageUpdateState createState() => _RegisterPageUpdateState();
}

class _RegisterPageUpdateState extends State<RegisterPageUpdate> {
  @override
  Widget build(BuildContext context) {
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
                      GoRouter.of(context).go(RoutesConstant.people);
                    },
                    child: const Icon(Icons.arrow_back))),
            const Expanded(
              child: Text(
                "Customer Update",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              width: 25,
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
            child: RegisterFormUpdate(userModelData: widget.userModelData),
          ),
        ),
      ])),
    );
  }
}
