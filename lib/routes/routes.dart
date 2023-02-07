import 'package:abc_banking_app/features/home/data/models/user_model.dart';
import 'package:abc_banking_app/features/home/presentation/pages/employee_home_page.dart';
import 'package:abc_banking_app/features/home/presentation/pages/home_page.dart';
import 'package:abc_banking_app/features/login/presentation/pages/login_page.dart';
import 'package:abc_banking_app/features/people/presentation/pages/people_page.dart';
import 'package:abc_banking_app/features/people/presentation/pages/people_update_page.dart';
import 'package:abc_banking_app/features/register/presentation/pages/register_page_update.dart';
import 'package:abc_banking_app/features/splash/presentation/pages/splash_page.dart';
import 'package:abc_banking_app/features/transaction/presentation/pages/transaction_all_page.dart';
import 'package:abc_banking_app/features/transaction/presentation/pages/transaction_page.dart';
import 'package:abc_banking_app/features/transfer/presentation/pages/transfer_page.dart';
import 'package:abc_banking_app/routes/routes_constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/register/presentation/pages/register_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
// final GlobalKey<NavigatorState> _shellNavigatorKey =
//     GlobalKey<NavigatorState>(debugLabel: 'shell');

class Routes {
  static final GoRouter router = GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: RoutesConstant.splash,
      routes: <RouteBase>[
        GoRoute(
          path: RoutesConstant.splash,
          builder: (context, state) => const SplashPage(),
        ),
        GoRoute(
          path: RoutesConstant.home,
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: RoutesConstant.employeehome,
          builder: (context, state) => const EmployeeHomePage(),
        ),
        GoRoute(
          path: RoutesConstant.login,
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
            path: RoutesConstant.transfer,
            builder: (context, state) {
              UserModel? userData = state.extra != null
                  ? (state.extra as UserModel)
                  : null; // 👈 casting is important

              return TransferPage(userData: userData);
            }),
        GoRoute(
          path: RoutesConstant.transaction,
          builder: (context, state) => const TransactionPage(),
        ),
        GoRoute(
          path: RoutesConstant.people,
          builder: (context, state) => const PeoplePage(),
        ),
        GoRoute(
          path: RoutesConstant.peopleUpdate,
          builder: (context, state) => const PeopleUpdatePage(),
        ),
        GoRoute(
          path: RoutesConstant.register,
          builder: (context, state) => const RegisterPage(),
        ),
        GoRoute(
          path: RoutesConstant.transactionAll,
          builder: (context, state) => const TransactionAllPage(),
        ),
        GoRoute(
            path: RoutesConstant.registerUpdate,
            builder: (context, state) {
              UserModel? userModel = state.extra != null
                  ? (state.extra as UserModel)
                  : null; // 👈 casting is important
              return RegisterPageUpdate(userModelData: userModel);
            }),
      ]);
}

// _customAnimation(context, state, child) {
//   return CustomTransitionPage(
//     key: state.pageKey,
//     child: child,
//     transitionDuration: const Duration(milliseconds: 0),
//     transitionsBuilder: (BuildContext context, Animation<double> animation,
//         Animation<double> secondaryAnimation, Widget child) {
//       // Change the opacity of the screen using a Curve based on the the animation's
//       // value
//       return FadeTransition(
//         opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
//         child: child,
//       );
//     },
//   );
// }
