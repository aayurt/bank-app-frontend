import 'package:abc_banking_app/features/home/data/models/me_api_response_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/failure/failure.dart';

abstract class HomeRepository {
  Future<Either<Failure, MeApiResponseModel>> getMe();
  Future<Either<Failure, MeApiResponseModel>> getAll();
}
