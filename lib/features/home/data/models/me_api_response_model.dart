import 'package:abc_banking_app/features/home/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'me_api_response_model.freezed.dart';
part 'me_api_response_model.g.dart';

@freezed
class MeApiResponseModel with _$MeApiResponseModel {
  const factory MeApiResponseModel({
    String? status,
    UserModel? user,
  }) = _MeApiResponseModel;

  factory MeApiResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MeApiResponseModelFromJson(json);
}
