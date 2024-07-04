part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class IncreaseCouterA extends CounterState {}

final class IncreaseCouterB extends CounterState {}
