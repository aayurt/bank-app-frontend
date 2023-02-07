
import 'package:abc_banking_app/core/service_locator/service_locator.dart';
import 'package:abc_banking_app/features/transaction/presentation/bloc/transaction_event.dart';
import 'package:abc_banking_app/features/transaction/presentation/bloc/transaction_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import '../../domain/usecases/transaction.usecase.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc() : super(const TransactionInitialState()) {
    on<TransactionEvent>((event, emit) async {
      print("OnGetMyTransaction");
      print(event is OnGetMyTransaction);
      print("OnGetAllTransaction");
      print(event is OnGetAllTransaction);
      if (event is OnGetAllTransaction) {
        emit(const TransactionState.loading());
        var result =
            await serviceLocator<TransactionUsecase>().getAllTransactions();
        result.fold(
          (failure) {
            emit(TransactionState.error(failure.message));
          },
          (data) {
            if (kDebugMode) {
              print("Response->SUCCESS");
              print(data);
            }
            emit(TransactionState.loaded(transactions: data));
          },
        );
      }
      if (event is OnGetMyTransaction) {
        emit(const TransactionState.loading());
        var result =
            await serviceLocator<TransactionUsecase>().getMyTransactions();

        result.fold(
          (failure) {
            emit(TransactionState.error(failure.message));
          },
          (data) {
            if (kDebugMode) {
              print("Response->SUCCESS");
              print(data);
            }
            emit(TransactionState.loaded(transactions: data));
          },
        );
      }
    });
  }
}
