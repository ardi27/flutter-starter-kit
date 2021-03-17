part of 'counter_cubit.dart';


@freezed
abstract class CounterState with _$CounterState {
  const factory CounterState(int number)= _CounterValue;
}
