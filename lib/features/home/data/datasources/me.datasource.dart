import 'dart:convert';

import 'package:abc_banking_app/core/constants/constants.dart';
import 'package:abc_banking_app/core/network/api_list.dart';
import 'package:abc_banking_app/core/network/api_service.dart';
import 'package:abc_banking_app/core/service_locator/service_locator.dart';
import 'package:abc_banking_app/features/home/data/models/me_api_response_model.dart';
import 'package:abc_banking_app/features/home/data/models/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/shared_pref/shared_pref.dart';

abstract class HomeRemoteDataSource {
  Future<Either<Failure, MeApiResponseModel>> getMe();
  Future<Either<Failure, MeApiResponseModel>> getAll();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService request = serviceLocator<ApiService>();

  @override
  Future<Either<Failure, MeApiResponseModel>> getMe() async {
    try {
      final String baseUrl = BankConstants.baseUrl;
      if (baseUrl.isNotEmpty) {
        final response = await request.get(
          ApiEndpoint(baseUrl, ApiList.getMe, {}),
        );

        if (response.statusCode == 200) {
          await SharedPrefService.getToken(
            SharedPrefKey.allUser,
          );
          return Right(MeApiResponseModel.fromJson(response.data));
        } else if (response.statusCode == 401) {
          return Left(ConnectionFailure(response.data));
        }
        return Left(ConnectionFailure(response.data['message']));
      }
      return const Left(ConnectionFailure("BaseUrl not found"));
    } catch (e) {
      debugPrint('HomeRemoteDataSourceImplError $e');
      return const Left(
        Exception('Exception Occured in HomeRemoteDataSourceImpl'),
      );
    }
  }

  @override
  Future<Either<Failure, MeApiResponseModel>> getAll() async {
    try {
      final String baseUrl = BankConstants.baseUrl;
      if (baseUrl.isNotEmpty) {
        final response = await request.get(
          ApiEndpoint(baseUrl, ApiList.getMe, {}),
        );
        final responseAllUsers = await request.get(
          ApiEndpoint(baseUrl, ApiList.getAllUsers, {}),
        );

        if (responseAllUsers.statusCode == 200 && response.statusCode == 200) {
          final resp = List<UserModel>.from(
              responseAllUsers.data.map((post) => UserModel.fromJson(post)));
          await SharedPrefService.storeToken(
              SharedPrefKey.allUser, json.encode(resp));
          await SharedPrefService.getToken(
            SharedPrefKey.allUser,
          );
          return Right(MeApiResponseModel.fromJson(response.data));
        } else if (response.statusCode == 401) {
          return Left(ConnectionFailure(response.data));
        }
        return Left(ConnectionFailure(response.data['message']));
      }
      return const Left(ConnectionFailure("BaseUrl not found"));
    } catch (e) {
      debugPrint('HomeRemoteDataSourceImplError $e');
      return const Left(
        Exception('Exception Occured in HomeRemoteDataSourceImpl'),
      );
    }
  }
}
