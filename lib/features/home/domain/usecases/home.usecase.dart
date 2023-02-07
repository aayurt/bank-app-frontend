import 'package:abc_banking_app/features/home/data/models/me_api_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/service_locator/service_locator.dart';
import '../../data/repositories/home_repository.dart';

class HomeUsecase {
  Future<Either<Failure, MeApiResponseModel>> getMeUseCase() async {
    final response = await serviceLocator<HomeRepository>().getMe();
    if (response.isRight()) {
      final remoteUserResponse =
          response.getOrElse(() => const MeApiResponseModel());
      if (kDebugMode) {
        print("remoteUserResponse=>$remoteUserResponse");
      }
    }
    return response;
  }

  Future<Either<Failure, MeApiResponseModel>> getAllUseCase() async {
    final response = await serviceLocator<HomeRepository>().getAll();
    if (response.isRight()) {
      final remoteUserResponse =
          response.getOrElse(() => const MeApiResponseModel());
      if (kDebugMode) {
        print("remoteUserResponse=>$remoteUserResponse");
      }
    }
    return response;
  }
}
