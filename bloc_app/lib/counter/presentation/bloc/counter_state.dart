part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {
  final int count;

  CounterInitial({this.count = 0});
}

final class CounterLoading extends CounterState {}

final class CounterChanged extends CounterState {
  final int count;

  CounterChanged({required this.count});
}
