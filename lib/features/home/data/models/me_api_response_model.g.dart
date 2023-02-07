// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me_api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MeApiResponseModel _$$_MeApiResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_MeApiResponseModel(
      status: json['status'] as String?,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MeApiResponseModelToJson(
        _$_MeApiResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'user': instance.user,
    };
