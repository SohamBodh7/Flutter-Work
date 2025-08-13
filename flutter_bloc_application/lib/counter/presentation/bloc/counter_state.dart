part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {
  final int count;

  CounterInitial({required this.count});
}

final class CounterLoadingState extends CounterState {}

final class CounterChangedState extends CounterState {
  final int count;

  CounterChangedState({required this.count});
}
