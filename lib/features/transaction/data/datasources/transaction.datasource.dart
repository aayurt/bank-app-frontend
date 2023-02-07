import 'package:abc_banking_app/core/constants/constants.dart';
import 'package:abc_banking_app/core/network/api_list.dart';
import 'package:abc_banking_app/core/network/api_service.dart';
import 'package:abc_banking_app/core/service_locator/service_locator.dart';
import 'package:abc_banking_app/features/transaction/data/models/transaction_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/failure/failure.dart';

abstract class TransactionRemoteDataSource {
  Future<Either<Failure, List<TransactionResponseModel>>> getMyTransactions();
  Future<Either<Failure, List<TransactionResponseModel>>> getAllTransactions();
}

class TransactionRemoteDataSourceImpl implements TransactionRemoteDataSource {
  final ApiService request = serviceLocator<ApiService>();

  @override
  Future<Either<Failure, List<TransactionResponseModel>>>
      getMyTransactions() async {
    try {
      final String baseUrl = BankConstants.baseUrl;

      if (baseUrl.isNotEmpty) {
        final response = await request.get(
          ApiEndpoint(baseUrl, ApiList.getMyTransactions, {}),
        );

        if (response.statusCode == 200) {
          final resp = List<TransactionResponseModel>.from(response.data
              .map((post) => TransactionResponseModel.fromJson(post)));

          return Right(resp);
        } else if (response.statusCode == 401) {
          return Left(ConnectionFailure(response.data));
        }
        return Left(ConnectionFailure(response.data['message']));
      }
      return const Left(ConnectionFailure("BaseUrl not found"));
    } catch (e) {
      debugPrint('TransactionRemoteDataSourceImplError: $e');
      return const Left(
        Exception('Exception Occured in TransactionRemoteDataSourceImpl'),
      );
    }
  }

  @override
  Future<Either<Failure, List<TransactionResponseModel>>>
      getAllTransactions() async {
    try {
      final String baseUrl = BankConstants.baseUrl;
      if (baseUrl.isNotEmpty) {
        final response = await request.get(
          ApiEndpoint(baseUrl, ApiList.getAllTransactions, {}),
        );
        if (response.statusCode == 200) {
          final resp = List<TransactionResponseModel>.from(response.data
              .map((post) => TransactionResponseModel.fromJson(post)));

          return Right(resp);
        } else if (response.statusCode == 401) {
          return Left(ConnectionFailure(response.data));
        }
        return Left(ConnectionFailure(response.data['message']));
      }
      return const Left(ConnectionFailure("BaseUrl not found"));
    } catch (e) {
      debugPrint('TransactionRemoteDataSourceImplError: $e');
      return const Left(
        Exception('Exception Occured in TransactionRemoteDataSourceImpl'),
      );
    }
  }
}
