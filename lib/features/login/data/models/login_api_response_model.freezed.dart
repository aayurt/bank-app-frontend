// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginApiResponseModel _$LoginApiResponseModelFromJson(
    Map<String, dynamic> json) {
  return _LoginApiResponseModel.fromJson(json);
}

/// @nodoc
mixin _$LoginApiResponseModel {
  String? get status => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginApiResponseModelCopyWith<LoginApiResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginApiResponseModelCopyWith<$Res> {
  factory $LoginApiResponseModelCopyWith(LoginApiResponseModel value,
          $Res Function(LoginApiResponseModel) then) =
      _$LoginApiResponseModelCopyWithImpl<$Res, LoginApiResponseModel>;
  @useResult
  $Res call({String? status, String? token});
}

/// @nodoc
class _$LoginApiResponseModelCopyWithImpl<$Res,
        $Val extends LoginApiResponseModel>
    implements $LoginApiResponseModelCopyWith<$Res> {
  _$LoginApiResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginApiResponseModelCopyWith<$Res>
    implements $LoginApiResponseModelCopyWith<$Res> {
  factory _$$_LoginApiResponseModelCopyWith(_$_LoginApiResponseModel value,
          $Res Function(_$_LoginApiResponseModel) then) =
      __$$_LoginApiResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? token});
}

/// @nodoc
class __$$_LoginApiResponseModelCopyWithImpl<$Res>
    extends _$LoginApiResponseModelCopyWithImpl<$Res, _$_LoginApiResponseModel>
    implements _$$_LoginApiResponseModelCopyWith<$Res> {
  __$$_LoginApiResponseModelCopyWithImpl(_$_LoginApiResponseModel _value,
      $Res Function(_$_LoginApiResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_LoginApiResponseModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginApiResponseModel implements _LoginApiResponseModel {
  const _$_LoginApiResponseModel({this.status, this.token});

  factory _$_LoginApiResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginApiResponseModelFromJson(json);

  @override
  final String? status;
  @override
  final String? token;

  @override
  String toString() {
    return 'LoginApiResponseModel(status: $status, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginApiResponseModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginApiResponseModelCopyWith<_$_LoginApiResponseModel> get copyWith =>
      __$$_LoginApiResponseModelCopyWithImpl<_$_LoginApiResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginApiResponseModelToJson(
      this,
    );
  }
}

abstract class _LoginApiResponseModel implements LoginApiResponseModel {
  const factory _LoginApiResponseModel(
      {final String? status, final String? token}) = _$_LoginApiResponseModel;

  factory _LoginApiResponseModel.fromJson(Map<String, dynamic> json) =
      _$_LoginApiResponseModel.fromJson;

  @override
  String? get status;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_LoginApiResponseModelCopyWith<_$_LoginApiResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
