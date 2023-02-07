// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int?,
      firstName: json['firstName'] as String?,
      middleName: json['middleName'] as String?,
      lastName: json['lastName'] as String?,
      accountNumber: json['accountNumber'] as int?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      role: json['role'] as String?,
      status: json['status'] as String?,
      gender: json['gender'] as String?,
      postCodeZip: json['postCodeZip'] as String?,
      telephone: json['telephone'] as String?,
      verifyToken: json['verifyToken'] as String?,
      frozen: json['frozen'] as bool?,
      overdraft: json['overdraft'] as int?,
      sortCode: json['sortCode'] as String?,
      issueDate: json['issueDate'] == null
          ? null
          : DateTime.parse(json['issueDate'] as String),
      expiryDate: json['expiryDate'] == null
          ? null
          : DateTime.parse(json['expiryDate'] as String),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'accountNumber': instance.accountNumber,
      'email': instance.email,
      'address': instance.address,
      'role': instance.role,
      'status': instance.status,
      'gender': instance.gender,
      'postCodeZip': instance.postCodeZip,
      'telephone': instance.telephone,
      'verifyToken': instance.verifyToken,
      'frozen': instance.frozen,
      'overdraft': instance.overdraft,
      'sortCode': instance.sortCode,
      'issueDate': instance.issueDate?.toIso8601String(),
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'type': instance.type,
    };
