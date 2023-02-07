import 'package:abc_banking_app/routes/routes.dart';
import 'package:abc_banking_app/theme/theme_service.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MK LOGIN',
        debugShowCheckedModeBanner: false,
        home: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.light,
          theme: ThemeService.lightThemeData,
          darkTheme: ThemeService.darkThemeData,
          routerConfig: Routes.router,
          title: "ABC Banking App",
        ));
  }
}
