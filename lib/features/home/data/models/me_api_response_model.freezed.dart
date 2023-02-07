// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'me_api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeApiResponseModel _$MeApiResponseModelFromJson(Map<String, dynamic> json) {
  return _MeApiResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MeApiResponseModel {
  String? get status => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeApiResponseModelCopyWith<MeApiResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeApiResponseModelCopyWith<$Res> {
  factory $MeApiResponseModelCopyWith(
          MeApiResponseModel value, $Res Function(MeApiResponseModel) then) =
      _$MeApiResponseModelCopyWithImpl<$Res, MeApiResponseModel>;
  @useResult
  $Res call({String? status, UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$MeApiResponseModelCopyWithImpl<$Res, $Val extends MeApiResponseModel>
    implements $MeApiResponseModelCopyWith<$Res> {
  _$MeApiResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MeApiResponseModelCopyWith<$Res>
    implements $MeApiResponseModelCopyWith<$Res> {
  factory _$$_MeApiResponseModelCopyWith(_$_MeApiResponseModel value,
          $Res Function(_$_MeApiResponseModel) then) =
      __$$_MeApiResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_MeApiResponseModelCopyWithImpl<$Res>
    extends _$MeApiResponseModelCopyWithImpl<$Res, _$_MeApiResponseModel>
    implements _$$_MeApiResponseModelCopyWith<$Res> {
  __$$_MeApiResponseModelCopyWithImpl(
      _$_MeApiResponseModel _value, $Res Function(_$_MeApiResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_MeApiResponseModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeApiResponseModel implements _MeApiResponseModel {
  const _$_MeApiResponseModel({this.status, this.user});

  factory _$_MeApiResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_MeApiResponseModelFromJson(json);

  @override
  final String? status;
  @override
  final UserModel? user;

  @override
  String toString() {
    return 'MeApiResponseModel(status: $status, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeApiResponseModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeApiResponseModelCopyWith<_$_MeApiResponseModel> get copyWith =>
      __$$_MeApiResponseModelCopyWithImpl<_$_MeApiResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeApiResponseModelToJson(
      this,
    );
  }
}

abstract class _MeApiResponseModel implements MeApiResponseModel {
  const factory _MeApiResponseModel(
      {final String? status, final UserModel? user}) = _$_MeApiResponseModel;

  factory _MeApiResponseModel.fromJson(Map<String, dynamic> json) =
      _$_MeApiResponseModel.fromJson;

  @override
  String? get status;
  @override
  UserModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$_MeApiResponseModelCopyWith<_$_MeApiResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
