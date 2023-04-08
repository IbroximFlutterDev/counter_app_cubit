import 'package:bloc/bloc.dart';
import 'package:counter_app/home/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState());

  void increment() {
    final count = state.count +1;
    final updatedState = CounterState(count: count);
    emit(updatedState);
  }
  void decrement() {
    final count = state.count -1;
    final updatedState = CounterState(count: count);
    emit(updatedState);
  }


}
