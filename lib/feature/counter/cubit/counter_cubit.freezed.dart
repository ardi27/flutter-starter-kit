// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'counter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CounterStateTearOff {
  const _$CounterStateTearOff();

  _CounterValue call(int number) {
    return _CounterValue(
      number,
    );
  }
}

/// @nodoc
const $CounterState = _$CounterStateTearOff();

/// @nodoc
mixin _$CounterState {
  int get number => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterStateCopyWith<CounterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res>;
  $Res call({int number});
}

/// @nodoc
class _$CounterStateCopyWithImpl<$Res> implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  final CounterState _value;
  // ignore: unused_field
  final $Res Function(CounterState) _then;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CounterValueCopyWith<$Res>
    implements $CounterStateCopyWith<$Res> {
  factory _$CounterValueCopyWith(
          _CounterValue value, $Res Function(_CounterValue) then) =
      __$CounterValueCopyWithImpl<$Res>;
  @override
  $Res call({int number});
}

/// @nodoc
class __$CounterValueCopyWithImpl<$Res> extends _$CounterStateCopyWithImpl<$Res>
    implements _$CounterValueCopyWith<$Res> {
  __$CounterValueCopyWithImpl(
      _CounterValue _value, $Res Function(_CounterValue) _then)
      : super(_value, (v) => _then(v as _CounterValue));

  @override
  _CounterValue get _value => super._value as _CounterValue;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_CounterValue(
      number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_CounterValue implements _CounterValue {
  const _$_CounterValue(this.number);

  @override
  final int number;

  @override
  String toString() {
    return 'CounterState(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CounterValue &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @JsonKey(ignore: true)
  @override
  _$CounterValueCopyWith<_CounterValue> get copyWith =>
      __$CounterValueCopyWithImpl<_CounterValue>(this, _$identity);
}

abstract class _CounterValue implements CounterState {
  const factory _CounterValue(int number) = _$_CounterValue;

  @override
  int get number => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CounterValueCopyWith<_CounterValue> get copyWith =>
      throw _privateConstructorUsedError;
}
