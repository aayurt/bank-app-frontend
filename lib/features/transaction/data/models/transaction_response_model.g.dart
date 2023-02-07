// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionResponseModel _$$_TransactionResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_TransactionResponseModel(
      id: json['id'] as int?,
      accSenderId: json['accSenderId'] as int?,
      accRecipientId: json['accRecipientId'] as int?,
      amount: (json['amount'] as num?)?.toDouble(),
      description: json['description'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_TransactionResponseModelToJson(
        _$_TransactionResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accSenderId': instance.accSenderId,
      'accRecipientId': instance.accRecipientId,
      'amount': instance.amount,
      'description': instance.description,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
