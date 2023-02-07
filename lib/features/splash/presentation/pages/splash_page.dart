import 'package:abc_banking_app/core/constants/constants.dart';
import 'package:abc_banking_app/routes/routes_constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/shared_pref/shared_pref.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 0), () async {
      await SharedPrefService.getToken(SharedPrefKey.token).then((token) {
        if (token.isNotEmpty) {
          GoRouter.of(context).go(RoutesConstant.home);
        } else {
          GoRouter.of(context).go(RoutesConstant.login);
        }
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              BankConstants.title,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            const SizedBox(
              width: 200.0,
              child: LinearProgressIndicator(),
            ),
          ],
        ))));
  }
}
