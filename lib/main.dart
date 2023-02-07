import 'package:abc_banking_app/bloc_provider.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'core/service_locator/service_locator.dart';

void main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();

  await setUpServiceLocator();
  runApp(const BlocProviderContainer());
}
