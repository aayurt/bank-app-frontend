import 'package:abc_banking_app/features/home/data/models/me_api_response_model.dart';
import 'package:abc_banking_app/features/home/data/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/service_locator/service_locator.dart';
import '../../data/datasources/me.datasource.dart';

class HomeRepositoryImpl implements HomeRepository {
  @override
  Future<Either<Failure, MeApiResponseModel>> getMe() {
    // ! FROM DB
    // ! FROM API
    return serviceLocator<HomeRemoteDataSource>().getMe();
  }

  @override
  Future<Either<Failure, MeApiResponseModel>> getAll() {
    // ! FROM DB
    // ! FROM API
    return serviceLocator<HomeRemoteDataSource>().getAll();
  }

  //
}
