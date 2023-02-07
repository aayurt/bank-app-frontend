import 'package:abc_banking_app/features/transaction/data/models/transaction_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'transaction_state.freezed.dart';

@freezed
abstract class TransactionState with _$TransactionState {
  const factory TransactionState.initial() = TransactionInitialState;
  const factory TransactionState.loading() = TransactionLoadingState;
  const factory TransactionState.error(String message) = TransactionErrorState;
  const factory TransactionState.loaded({
    required List<TransactionResponseModel> transactions,
  }) = TransactionLoadedState;
}
