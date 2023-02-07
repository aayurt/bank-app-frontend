import 'package:abc_banking_app/features/transaction/data/models/transaction_response_model.dart';
import 'package:abc_banking_app/features/transaction/domain/repositories/transaction.repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/service_locator/service_locator.dart';
import '../datasources/transaction.datasource.dart';

class TransactionRepositoryImpl implements TransactionRepository {
  @override
  Future<Either<Failure, List<TransactionResponseModel>>> getMyTransaction() {
    return serviceLocator<TransactionRemoteDataSource>().getMyTransactions();
  }

  @override
  Future<Either<Failure, List<TransactionResponseModel>>> getAllTransaction() {
    return serviceLocator<TransactionRemoteDataSource>().getAllTransactions();
  }
}
