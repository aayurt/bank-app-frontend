import 'package:abc_banking_app/features/transaction/data/models/transaction_response_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/service_locator/service_locator.dart';
import '../repositories/transaction.repository.dart';

class TransactionUsecase {
  Future<Either<Failure, List<TransactionResponseModel>>>
      getMyTransactions() async {
    final response =
        await serviceLocator<TransactionRepository>().getMyTransaction();
    if (response.isRight()) {}
    return response;
  }

  getAllTransactions() async {
    final response =
        await serviceLocator<TransactionRepository>().getAllTransaction();
    if (response.isRight()) {}
    return response;
  }
}
