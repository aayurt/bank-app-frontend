// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetMe,
    required TResult Function() onGetAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetMe,
    TResult? Function()? onGetAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetMe,
    TResult Function()? onGetAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetMe value) onGetMe,
    required TResult Function(OnGetAll value) onGetAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetMe value)? onGetMe,
    TResult? Function(OnGetAll value)? onGetAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetMe value)? onGetMe,
    TResult Function(OnGetAll value)? onGetAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnGetMeCopyWith<$Res> {
  factory _$$OnGetMeCopyWith(_$OnGetMe value, $Res Function(_$OnGetMe) then) =
      __$$OnGetMeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnGetMeCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnGetMe>
    implements _$$OnGetMeCopyWith<$Res> {
  __$$OnGetMeCopyWithImpl(_$OnGetMe _value, $Res Function(_$OnGetMe) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnGetMe implements OnGetMe {
  const _$OnGetMe();

  @override
  String toString() {
    return 'HomeEvent.onGetMe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnGetMe);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetMe,
    required TResult Function() onGetAll,
  }) {
    return onGetMe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetMe,
    TResult? Function()? onGetAll,
  }) {
    return onGetMe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetMe,
    TResult Function()? onGetAll,
    required TResult orElse(),
  }) {
    if (onGetMe != null) {
      return onGetMe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetMe value) onGetMe,
    required TResult Function(OnGetAll value) onGetAll,
  }) {
    return onGetMe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetMe value)? onGetMe,
    TResult? Function(OnGetAll value)? onGetAll,
  }) {
    return onGetMe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetMe value)? onGetMe,
    TResult Function(OnGetAll value)? onGetAll,
    required TResult orElse(),
  }) {
    if (onGetMe != null) {
      return onGetMe(this);
    }
    return orElse();
  }
}

abstract class OnGetMe implements HomeEvent {
  const factory OnGetMe() = _$OnGetMe;
}

/// @nodoc
abstract class _$$OnGetAllCopyWith<$Res> {
  factory _$$OnGetAllCopyWith(
          _$OnGetAll value, $Res Function(_$OnGetAll) then) =
      __$$OnGetAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnGetAllCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnGetAll>
    implements _$$OnGetAllCopyWith<$Res> {
  __$$OnGetAllCopyWithImpl(_$OnGetAll _value, $Res Function(_$OnGetAll) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnGetAll implements OnGetAll {
  const _$OnGetAll();

  @override
  String toString() {
    return 'HomeEvent.onGetAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnGetAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetMe,
    required TResult Function() onGetAll,
  }) {
    return onGetAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetMe,
    TResult? Function()? onGetAll,
  }) {
    return onGetAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetMe,
    TResult Function()? onGetAll,
    required TResult orElse(),
  }) {
    if (onGetAll != null) {
      return onGetAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetMe value) onGetMe,
    required TResult Function(OnGetAll value) onGetAll,
  }) {
    return onGetAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetMe value)? onGetMe,
    TResult? Function(OnGetAll value)? onGetAll,
  }) {
    return onGetAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetMe value)? onGetMe,
    TResult Function(OnGetAll value)? onGetAll,
    required TResult orElse(),
  }) {
    if (onGetAll != null) {
      return onGetAll(this);
    }
    return orElse();
  }
}

abstract class OnGetAll implements HomeEvent {
  const factory OnGetAll() = _$OnGetAll;
}
