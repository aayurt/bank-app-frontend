import 'package:abc_banking_app/features/home/data/models/me_api_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitialState;
  const factory HomeState.loading() = HomeLoadingState;
  const factory HomeState.error(String message) = HomeErrorState;
  const factory HomeState.loaded({
    required MeApiResponseModel user,
  }) = HomeLoadedState;
}
