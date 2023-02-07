import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_api_response_model.freezed.dart';
part 'login_api_response_model.g.dart';

@freezed
class LoginApiResponseModel with _$LoginApiResponseModel {
  const factory LoginApiResponseModel({
    String? status,
    String? token,
  }) = _LoginApiResponseModel;

  factory LoginApiResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginApiResponseModelFromJson(json);
}
