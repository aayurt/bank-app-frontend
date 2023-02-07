// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionResponseModel _$TransactionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _TransactionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionResponseModel {
  int? get id => throw _privateConstructorUsedError;
  int? get accSenderId => throw _privateConstructorUsedError;
  int? get accRecipientId => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionResponseModelCopyWith<TransactionResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionResponseModelCopyWith<$Res> {
  factory $TransactionResponseModelCopyWith(TransactionResponseModel value,
          $Res Function(TransactionResponseModel) then) =
      _$TransactionResponseModelCopyWithImpl<$Res, TransactionResponseModel>;
  @useResult
  $Res call(
      {int? id,
      int? accSenderId,
      int? accRecipientId,
      double? amount,
      String? description,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$TransactionResponseModelCopyWithImpl<$Res,
        $Val extends TransactionResponseModel>
    implements $TransactionResponseModelCopyWith<$Res> {
  _$TransactionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? accSenderId = freezed,
    Object? accRecipientId = freezed,
    Object? amount = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      accSenderId: freezed == accSenderId
          ? _value.accSenderId
          : accSenderId // ignore: cast_nullable_to_non_nullable
              as int?,
      accRecipientId: freezed == accRecipientId
          ? _value.accRecipientId
          : accRecipientId // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionResponseModelCopyWith<$Res>
    implements $TransactionResponseModelCopyWith<$Res> {
  factory _$$_TransactionResponseModelCopyWith(
          _$_TransactionResponseModel value,
          $Res Function(_$_TransactionResponseModel) then) =
      __$$_TransactionResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? accSenderId,
      int? accRecipientId,
      double? amount,
      String? description,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_TransactionResponseModelCopyWithImpl<$Res>
    extends _$TransactionResponseModelCopyWithImpl<$Res,
        _$_TransactionResponseModel>
    implements _$$_TransactionResponseModelCopyWith<$Res> {
  __$$_TransactionResponseModelCopyWithImpl(_$_TransactionResponseModel _value,
      $Res Function(_$_TransactionResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? accSenderId = freezed,
    Object? accRecipientId = freezed,
    Object? amount = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_TransactionResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      accSenderId: freezed == accSenderId
          ? _value.accSenderId
          : accSenderId // ignore: cast_nullable_to_non_nullable
              as int?,
      accRecipientId: freezed == accRecipientId
          ? _value.accRecipientId
          : accRecipientId // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionResponseModel implements _TransactionResponseModel {
  const _$_TransactionResponseModel(
      {this.id,
      this.accSenderId,
      this.accRecipientId,
      this.amount,
      this.description,
      this.createdAt,
      this.updatedAt});

  factory _$_TransactionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final int? accSenderId;
  @override
  final int? accRecipientId;
  @override
  final double? amount;
  @override
  final String? description;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'TransactionResponseModel(id: $id, accSenderId: $accSenderId, accRecipientId: $accRecipientId, amount: $amount, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accSenderId, accSenderId) ||
                other.accSenderId == accSenderId) &&
            (identical(other.accRecipientId, accRecipientId) ||
                other.accRecipientId == accRecipientId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, accSenderId, accRecipientId,
      amount, description, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionResponseModelCopyWith<_$_TransactionResponseModel>
      get copyWith => __$$_TransactionResponseModelCopyWithImpl<
          _$_TransactionResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionResponseModelToJson(
      this,
    );
  }
}

abstract class _TransactionResponseModel implements TransactionResponseModel {
  const factory _TransactionResponseModel(
      {final int? id,
      final int? accSenderId,
      final int? accRecipientId,
      final double? amount,
      final String? description,
      final String? createdAt,
      final String? updatedAt}) = _$_TransactionResponseModel;

  factory _TransactionResponseModel.fromJson(Map<String, dynamic> json) =
      _$_TransactionResponseModel.fromJson;

  @override
  int? get id;
  @override
  int? get accSenderId;
  @override
  int? get accRecipientId;
  @override
  double? get amount;
  @override
  String? get description;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionResponseModelCopyWith<_$_TransactionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
