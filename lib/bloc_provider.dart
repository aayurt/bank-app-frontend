import 'package:abc_banking_app/app.dart';
import 'package:abc_banking_app/features/login/presentation/bloc/login_bloc.dart';
import 'package:abc_banking_app/features/transaction/presentation/bloc/transaction_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/presentation/bloc/home_bloc.dart';

class BlocProviderContainer extends StatelessWidget {
  const BlocProviderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<LoginBloc>(
        create: (BuildContext context) => LoginBloc(),
      ),
      BlocProvider<HomeBloc>(
        create: (BuildContext context) => HomeBloc(),
      ),
      BlocProvider<TransactionBloc>(
        create: (BuildContext context) => TransactionBloc(),
      ),
    ], child: const App());
  }
}
