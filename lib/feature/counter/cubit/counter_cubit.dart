import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'counter_state.dart';
part 'counter_cubit.freezed.dart';

@injectable
class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(0));
  void increment(){
    int num=state.number+1;
    emit(CounterState(num));
  }
}
