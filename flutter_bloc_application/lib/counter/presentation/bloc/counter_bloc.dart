import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int count = 0;

  CounterBloc() : super(CounterInitial(count: 0)) {
    on<CounterIncrementedEvent>(_onCounterIncrementedEvent);
    on<CounterDecrementedEvent>(_onCounterDecrementedEvent);
  }

  FutureOr<void> _onCounterIncrementedEvent(
    CounterIncrementedEvent event,
    Emitter<CounterState> emit,
  ) {
    emit(CounterLoadingState());
    count++;
    emit(CounterChangedState(count: count));
  }

  FutureOr<void> _onCounterDecrementedEvent(
    CounterDecrementedEvent event,
    Emitter<CounterState> emit,
  ) {
    emit(CounterLoadingState());
    count--;
    emit(CounterChangedState(count: count));
  }
}
