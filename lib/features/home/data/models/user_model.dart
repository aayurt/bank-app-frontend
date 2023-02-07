import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    int? id,
    String? firstName,
    String? middleName,
    String? lastName,
    int? accountNumber,
    String? email,
    String? address,
    String? role,
    String? status,
    String? gender,
    String? postCodeZip,
    String? telephone,
    String? verifyToken,
    bool? frozen,
    int? overdraft,
    String? sortCode,
    DateTime? issueDate,
    DateTime? expiryDate,
    String? type,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
