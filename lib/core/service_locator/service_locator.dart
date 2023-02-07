import 'package:abc_banking_app/core/network/api_service.dart';
import 'package:abc_banking_app/features/home/data/datasources/me.datasource.dart';
import 'package:abc_banking_app/features/home/data/repositories/home_repository.dart';
import 'package:abc_banking_app/features/home/domain/repositories/home_repository.dart';
import 'package:abc_banking_app/features/home/domain/usecases/home.usecase.dart';
import 'package:abc_banking_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:abc_banking_app/features/login/domain/usecases/auth.usecase.dart';
import 'package:abc_banking_app/features/transaction/data/datasources/transaction.datasource.dart';
import 'package:abc_banking_app/features/transaction/domain/repositories/transaction.repository.dart';
import 'package:abc_banking_app/features/transaction/domain/usecases/transaction.usecase.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/datasources/login.datasource.dart';
import '../../features/login/data/repositories/login_user_repository.dart';
import '../../features/login/domain/repositories/login.repository.dart';
import '../../features/transaction/data/repositories/transasction_repository.dart';

final serviceLocator = GetIt.instance;

Future<void> setUpServiceLocator() async {
  // ! API Service
  serviceLocator.registerSingleton<ApiService>(ApiService());
  // ! Login Api
  //repo
  serviceLocator
      .registerFactory<LoginUserRepository>(() => LoginUserRepositoryImpl());
  //datasource
  serviceLocator.registerFactory<LoginRemoteDataSource>(
      () => LoginRemoteDataSourceImpl());
  //usecase
  serviceLocator.registerFactory<LoginUserUsecase>(() => LoginUserUsecase());
  // ! GetMe Api
  serviceLocator.registerSingleton<HomeBloc>(HomeBloc());

  //repo
  serviceLocator.registerFactory<HomeRepository>(() => HomeRepositoryImpl());
  //datasource
  serviceLocator
      .registerFactory<HomeRemoteDataSource>(() => HomeRemoteDataSourceImpl());
  //usecase
  serviceLocator.registerFactory<HomeUsecase>(() => HomeUsecase());
  // ! Transaction Api
  //repo
  serviceLocator.registerFactory<TransactionRepository>(
      () => TransactionRepositoryImpl());
  //datasource
  serviceLocator.registerFactory<TransactionRemoteDataSource>(
      () => TransactionRemoteDataSourceImpl());
  //usecase
  serviceLocator
      .registerFactory<TransactionUsecase>(() => TransactionUsecase());
}
