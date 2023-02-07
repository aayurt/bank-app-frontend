import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_event.freezed.dart';

@freezed
abstract class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.onGetMyTransactionList() = OnGetMyTransaction;
  const factory TransactionEvent.onGetAllTransactionList() =
      OnGetAllTransaction;
}
