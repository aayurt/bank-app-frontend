// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetMyTransactionList,
    required TResult Function() onGetAllTransactionList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetMyTransactionList,
    TResult? Function()? onGetAllTransactionList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetMyTransactionList,
    TResult Function()? onGetAllTransactionList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetMyTransaction value) onGetMyTransactionList,
    required TResult Function(OnGetAllTransaction value)
        onGetAllTransactionList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetMyTransaction value)? onGetMyTransactionList,
    TResult? Function(OnGetAllTransaction value)? onGetAllTransactionList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetMyTransaction value)? onGetMyTransactionList,
    TResult Function(OnGetAllTransaction value)? onGetAllTransactionList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res, TransactionEvent>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res, $Val extends TransactionEvent>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnGetMyTransactionCopyWith<$Res> {
  factory _$$OnGetMyTransactionCopyWith(_$OnGetMyTransaction value,
          $Res Function(_$OnGetMyTransaction) then) =
      __$$OnGetMyTransactionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnGetMyTransactionCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$OnGetMyTransaction>
    implements _$$OnGetMyTransactionCopyWith<$Res> {
  __$$OnGetMyTransactionCopyWithImpl(
      _$OnGetMyTransaction _value, $Res Function(_$OnGetMyTransaction) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnGetMyTransaction implements OnGetMyTransaction {
  const _$OnGetMyTransaction();

  @override
  String toString() {
    return 'TransactionEvent.onGetMyTransactionList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnGetMyTransaction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetMyTransactionList,
    required TResult Function() onGetAllTransactionList,
  }) {
    return onGetMyTransactionList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetMyTransactionList,
    TResult? Function()? onGetAllTransactionList,
  }) {
    return onGetMyTransactionList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetMyTransactionList,
    TResult Function()? onGetAllTransactionList,
    required TResult orElse(),
  }) {
    if (onGetMyTransactionList != null) {
      return onGetMyTransactionList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetMyTransaction value) onGetMyTransactionList,
    required TResult Function(OnGetAllTransaction value)
        onGetAllTransactionList,
  }) {
    return onGetMyTransactionList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetMyTransaction value)? onGetMyTransactionList,
    TResult? Function(OnGetAllTransaction value)? onGetAllTransactionList,
  }) {
    return onGetMyTransactionList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetMyTransaction value)? onGetMyTransactionList,
    TResult Function(OnGetAllTransaction value)? onGetAllTransactionList,
    required TResult orElse(),
  }) {
    if (onGetMyTransactionList != null) {
      return onGetMyTransactionList(this);
    }
    return orElse();
  }
}

abstract class OnGetMyTransaction implements TransactionEvent {
  const factory OnGetMyTransaction() = _$OnGetMyTransaction;
}

/// @nodoc
abstract class _$$OnGetAllTransactionCopyWith<$Res> {
  factory _$$OnGetAllTransactionCopyWith(_$OnGetAllTransaction value,
          $Res Function(_$OnGetAllTransaction) then) =
      __$$OnGetAllTransactionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnGetAllTransactionCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$OnGetAllTransaction>
    implements _$$OnGetAllTransactionCopyWith<$Res> {
  __$$OnGetAllTransactionCopyWithImpl(
      _$OnGetAllTransaction _value, $Res Function(_$OnGetAllTransaction) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnGetAllTransaction implements OnGetAllTransaction {
  const _$OnGetAllTransaction();

  @override
  String toString() {
    return 'TransactionEvent.onGetAllTransactionList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnGetAllTransaction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetMyTransactionList,
    required TResult Function() onGetAllTransactionList,
  }) {
    return onGetAllTransactionList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetMyTransactionList,
    TResult? Function()? onGetAllTransactionList,
  }) {
    return onGetAllTransactionList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetMyTransactionList,
    TResult Function()? onGetAllTransactionList,
    required TResult orElse(),
  }) {
    if (onGetAllTransactionList != null) {
      return onGetAllTransactionList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetMyTransaction value) onGetMyTransactionList,
    required TResult Function(OnGetAllTransaction value)
        onGetAllTransactionList,
  }) {
    return onGetAllTransactionList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetMyTransaction value)? onGetMyTransactionList,
    TResult? Function(OnGetAllTransaction value)? onGetAllTransactionList,
  }) {
    return onGetAllTransactionList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetMyTransaction value)? onGetMyTransactionList,
    TResult Function(OnGetAllTransaction value)? onGetAllTransactionList,
    required TResult orElse(),
  }) {
    if (onGetAllTransactionList != null) {
      return onGetAllTransactionList(this);
    }
    return orElse();
  }
}

abstract class OnGetAllTransaction implements TransactionEvent {
  const factory OnGetAllTransaction() = _$OnGetAllTransaction;
}
