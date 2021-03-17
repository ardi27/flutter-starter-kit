// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authentication_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  _InitialState initial() {
    return const _InitialState();
  }

  _AuthenticatedState authenticated({required String token}) {
    return _AuthenticatedState(
      token: token,
    );
  }

  _UnAuthenticatedState unAuthenticated() {
    return const _UnAuthenticatedState();
  }

  _LoadingState loading() {
    return const _LoadingState();
  }

  _FailureState failure() {
    return const _FailureState();
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String token) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() loading,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String token)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UnAuthenticatedState value) unAuthenticated,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_FailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnAuthenticatedState value)? unAuthenticated,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class _$InitialStateCopyWith<$Res> {
  factory _$InitialStateCopyWith(
          _InitialState value, $Res Function(_InitialState) then) =
      __$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$InitialStateCopyWith<$Res> {
  __$InitialStateCopyWithImpl(
      _InitialState _value, $Res Function(_InitialState) _then)
      : super(_value, (v) => _then(v as _InitialState));

  @override
  _InitialState get _value => super._value as _InitialState;
}

/// @nodoc
class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String token) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() loading,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String token)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? failure,
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
    required TResult Function(_InitialState value) initial,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UnAuthenticatedState value) unAuthenticated,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_FailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnAuthenticatedState value)? unAuthenticated,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements AuthenticationState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$AuthenticatedStateCopyWith<$Res> {
  factory _$AuthenticatedStateCopyWith(
          _AuthenticatedState value, $Res Function(_AuthenticatedState) then) =
      __$AuthenticatedStateCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class __$AuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$AuthenticatedStateCopyWith<$Res> {
  __$AuthenticatedStateCopyWithImpl(
      _AuthenticatedState _value, $Res Function(_AuthenticatedState) _then)
      : super(_value, (v) => _then(v as _AuthenticatedState));

  @override
  _AuthenticatedState get _value => super._value as _AuthenticatedState;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_AuthenticatedState(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_AuthenticatedState implements _AuthenticatedState {
  const _$_AuthenticatedState({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'AuthenticationState.authenticated(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticatedState &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedStateCopyWith<_AuthenticatedState> get copyWith =>
      __$AuthenticatedStateCopyWithImpl<_AuthenticatedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String token) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() loading,
    required TResult Function() failure,
  }) {
    return authenticated(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String token)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UnAuthenticatedState value) unAuthenticated,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_FailureState value) failure,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnAuthenticatedState value)? unAuthenticated,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthenticatedState implements AuthenticationState {
  const factory _AuthenticatedState({required String token}) =
      _$_AuthenticatedState;

  String get token => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthenticatedStateCopyWith<_AuthenticatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnAuthenticatedStateCopyWith<$Res> {
  factory _$UnAuthenticatedStateCopyWith(_UnAuthenticatedState value,
          $Res Function(_UnAuthenticatedState) then) =
      __$UnAuthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnAuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$UnAuthenticatedStateCopyWith<$Res> {
  __$UnAuthenticatedStateCopyWithImpl(
      _UnAuthenticatedState _value, $Res Function(_UnAuthenticatedState) _then)
      : super(_value, (v) => _then(v as _UnAuthenticatedState));

  @override
  _UnAuthenticatedState get _value => super._value as _UnAuthenticatedState;
}

/// @nodoc
class _$_UnAuthenticatedState implements _UnAuthenticatedState {
  const _$_UnAuthenticatedState();

  @override
  String toString() {
    return 'AuthenticationState.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnAuthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String token) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() loading,
    required TResult Function() failure,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String token)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UnAuthenticatedState value) unAuthenticated,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_FailureState value) failure,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnAuthenticatedState value)? unAuthenticated,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticatedState implements AuthenticationState {
  const factory _UnAuthenticatedState() = _$_UnAuthenticatedState;
}

/// @nodoc
abstract class _$LoadingStateCopyWith<$Res> {
  factory _$LoadingStateCopyWith(
          _LoadingState value, $Res Function(_LoadingState) then) =
      __$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$LoadingStateCopyWith<$Res> {
  __$LoadingStateCopyWithImpl(
      _LoadingState _value, $Res Function(_LoadingState) _then)
      : super(_value, (v) => _then(v as _LoadingState));

  @override
  _LoadingState get _value => super._value as _LoadingState;
}

/// @nodoc
class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'AuthenticationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String token) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() loading,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String token)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? failure,
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
    required TResult Function(_InitialState value) initial,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UnAuthenticatedState value) unAuthenticated,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_FailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnAuthenticatedState value)? unAuthenticated,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements AuthenticationState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$FailureStateCopyWith<$Res> {
  factory _$FailureStateCopyWith(
          _FailureState value, $Res Function(_FailureState) then) =
      __$FailureStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$FailureStateCopyWith<$Res> {
  __$FailureStateCopyWithImpl(
      _FailureState _value, $Res Function(_FailureState) _then)
      : super(_value, (v) => _then(v as _FailureState));

  @override
  _FailureState get _value => super._value as _FailureState;
}

/// @nodoc
class _$_FailureState implements _FailureState {
  const _$_FailureState();

  @override
  String toString() {
    return 'AuthenticationState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FailureState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String token) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() loading,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String token)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UnAuthenticatedState value) unAuthenticated,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_FailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UnAuthenticatedState value)? unAuthenticated,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureState implements AuthenticationState {
  const factory _FailureState() = _$_FailureState;
}
