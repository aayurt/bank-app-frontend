import 'package:abc_banking_app/features/transaction/data/models/transaction_response_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';

abstract class TransactionRepository {
  Future<Either<Failure, List<TransactionResponseModel>>> getMyTransaction();
  Future<Either<Failure, List<TransactionResponseModel>>> getAllTransaction();
}
