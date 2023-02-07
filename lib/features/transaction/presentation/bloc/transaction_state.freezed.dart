// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<TransactionResponseModel> transactions)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<TransactionResponseModel> transactions)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<TransactionResponseModel> transactions)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitialState value) initial,
    required TResult Function(TransactionLoadingState value) loading,
    required TResult Function(TransactionErrorState value) error,
    required TResult Function(TransactionLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitialState value)? initial,
    TResult? Function(TransactionLoadingState value)? loading,
    TResult? Function(TransactionErrorState value)? error,
    TResult? Function(TransactionLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitialState value)? initial,
    TResult Function(TransactionLoadingState value)? loading,
    TResult Function(TransactionErrorState value)? error,
    TResult Function(TransactionLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TransactionInitialStateCopyWith<$Res> {
  factory _$$TransactionInitialStateCopyWith(_$TransactionInitialState value,
          $Res Function(_$TransactionInitialState) then) =
      __$$TransactionInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionInitialStateCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionInitialState>
    implements _$$TransactionInitialStateCopyWith<$Res> {
  __$$TransactionInitialStateCopyWithImpl(_$TransactionInitialState _value,
      $Res Function(_$TransactionInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionInitialState implements TransactionInitialState {
  const _$TransactionInitialState();

  @override
  String toString() {
    return 'TransactionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<TransactionResponseModel> transactions)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<TransactionResponseModel> transactions)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<TransactionResponseModel> transactions)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitialState value) initial,
    required TResult Function(TransactionLoadingState value) loading,
    required TResult Function(TransactionErrorState value) error,
    required TResult Function(TransactionLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitialState value)? initial,
    TResult? Function(TransactionLoadingState value)? loading,
    TResult? Function(TransactionErrorState value)? error,
    TResult? Function(TransactionLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitialState value)? initial,
    TResult Function(TransactionLoadingState value)? loading,
    TResult Function(TransactionErrorState value)? error,
    TResult Function(TransactionLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TransactionInitialState implements TransactionState {
  const factory TransactionInitialState() = _$TransactionInitialState;
}

/// @nodoc
abstract class _$$TransactionLoadingStateCopyWith<$Res> {
  factory _$$TransactionLoadingStateCopyWith(_$TransactionLoadingState value,
          $Res Function(_$TransactionLoadingState) then) =
      __$$TransactionLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionLoadingStateCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionLoadingState>
    implements _$$TransactionLoadingStateCopyWith<$Res> {
  __$$TransactionLoadingStateCopyWithImpl(_$TransactionLoadingState _value,
      $Res Function(_$TransactionLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionLoadingState implements TransactionLoadingState {
  const _$TransactionLoadingState();

  @override
  String toString() {
    return 'TransactionState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<TransactionResponseModel> transactions)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<TransactionResponseModel> transactions)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<TransactionResponseModel> transactions)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitialState value) initial,
    required TResult Function(TransactionLoadingState value) loading,
    required TResult Function(TransactionErrorState value) error,
    required TResult Function(TransactionLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitialState value)? initial,
    TResult? Function(TransactionLoadingState value)? loading,
    TResult? Function(TransactionErrorState value)? error,
    TResult? Function(TransactionLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitialState value)? initial,
    TResult Function(TransactionLoadingState value)? loading,
    TResult Function(TransactionErrorState value)? error,
    TResult Function(TransactionLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TransactionLoadingState implements TransactionState {
  const factory TransactionLoadingState() = _$TransactionLoadingState;
}

/// @nodoc
abstract class _$$TransactionErrorStateCopyWith<$Res> {
  factory _$$TransactionErrorStateCopyWith(_$TransactionErrorState value,
          $Res Function(_$TransactionErrorState) then) =
      __$$TransactionErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TransactionErrorStateCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionErrorState>
    implements _$$TransactionErrorStateCopyWith<$Res> {
  __$$TransactionErrorStateCopyWithImpl(_$TransactionErrorState _value,
      $Res Function(_$TransactionErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TransactionErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TransactionErrorState implements TransactionErrorState {
  const _$TransactionErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TransactionState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionErrorStateCopyWith<_$TransactionErrorState> get copyWith =>
      __$$TransactionErrorStateCopyWithImpl<_$TransactionErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<TransactionResponseModel> transactions)
        loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<TransactionResponseModel> transactions)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<TransactionResponseModel> transactions)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitialState value) initial,
    required TResult Function(TransactionLoadingState value) loading,
    required TResult Function(TransactionErrorState value) error,
    required TResult Function(TransactionLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitialState value)? initial,
    TResult? Function(TransactionLoadingState value)? loading,
    TResult? Function(TransactionErrorState value)? error,
    TResult? Function(TransactionLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitialState value)? initial,
    TResult Function(TransactionLoadingState value)? loading,
    TResult Function(TransactionErrorState value)? error,
    TResult Function(TransactionLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TransactionErrorState implements TransactionState {
  const factory TransactionErrorState(final String message) =
      _$TransactionErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$TransactionErrorStateCopyWith<_$TransactionErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionLoadedStateCopyWith<$Res> {
  factory _$$TransactionLoadedStateCopyWith(_$TransactionLoadedState value,
          $Res Function(_$TransactionLoadedState) then) =
      __$$TransactionLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TransactionResponseModel> transactions});
}

/// @nodoc
class __$$TransactionLoadedStateCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionLoadedState>
    implements _$$TransactionLoadedStateCopyWith<$Res> {
  __$$TransactionLoadedStateCopyWithImpl(_$TransactionLoadedState _value,
      $Res Function(_$TransactionLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_$TransactionLoadedState(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionResponseModel>,
    ));
  }
}

/// @nodoc

class _$TransactionLoadedState implements TransactionLoadedState {
  const _$TransactionLoadedState(
      {required final List<TransactionResponseModel> transactions})
      : _transactions = transactions;

  final List<TransactionResponseModel> _transactions;
  @override
  List<TransactionResponseModel> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'TransactionState.loaded(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionLoadedState &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionLoadedStateCopyWith<_$TransactionLoadedState> get copyWith =>
      __$$TransactionLoadedStateCopyWithImpl<_$TransactionLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<TransactionResponseModel> transactions)
        loaded,
  }) {
    return loaded(transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<TransactionResponseModel> transactions)? loaded,
  }) {
    return loaded?.call(transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<TransactionResponseModel> transactions)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitialState value) initial,
    required TResult Function(TransactionLoadingState value) loading,
    required TResult Function(TransactionErrorState value) error,
    required TResult Function(TransactionLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitialState value)? initial,
    TResult? Function(TransactionLoadingState value)? loading,
    TResult? Function(TransactionErrorState value)? error,
    TResult? Function(TransactionLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitialState value)? initial,
    TResult Function(TransactionLoadingState value)? loading,
    TResult Function(TransactionErrorState value)? error,
    TResult Function(TransactionLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TransactionLoadedState implements TransactionState {
  const factory TransactionLoadedState(
          {required final List<TransactionResponseModel> transactions}) =
      _$TransactionLoadedState;

  List<TransactionResponseModel> get transactions;
  @JsonKey(ignore: true)
  _$$TransactionLoadedStateCopyWith<_$TransactionLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
