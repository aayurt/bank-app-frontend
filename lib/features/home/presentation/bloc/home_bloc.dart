import 'package:bloc/bloc.dart';
import '../../../../core/service_locator/service_locator.dart';
import '../../domain/usecases/home.usecase.dart';
import 'home_event.dart';
import 'home_state.dart';
import 'package:flutter/foundation.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitialState()) {
    // ignore: void_checks
    on<HomeEvent>((event, emit) async {
      emit(const HomeState.loading());
      var result = await serviceLocator<HomeUsecase>().getAllUseCase();
      var result1 = await serviceLocator<HomeUsecase>().getMeUseCase();
      result1.fold(
        (failure) {
          if (kDebugMode) {
            print("Response->ERROR");
            print(failure.message);
          }
          emit(HomeState.error(failure.message));
        },
        (data) async {
          if (kDebugMode) {
            print("Response->SUCCESS");
            print(data);
          }

          emit(HomeState.loaded(user: data));
        },
      );
      result.fold(
        (failure) {
          if (kDebugMode) {
            print("Response->ERROR");
            print(failure.message);
          }
          emit(HomeState.error(failure.message));
        },
        (data) async {
          if (kDebugMode) {
            print("Response->SUCCESS");
            print(data);
          }

          emit(HomeState.loaded(user: data));
        },
      );
    });
  }
}
