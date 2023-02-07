import 'package:freezed_annotation/freezed_annotation.dart';
part 'transaction_response_model.freezed.dart';
part 'transaction_response_model.g.dart';

@freezed
class TransactionResponseModel with _$TransactionResponseModel {
  const factory TransactionResponseModel({
    int? id,
    int? accSenderId,
    int? accRecipientId,
    double? amount,
    String? description,
    String? createdAt,
    String? updatedAt,
  }) = _TransactionResponseModel;

  factory TransactionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponseModelFromJson(json);
}
