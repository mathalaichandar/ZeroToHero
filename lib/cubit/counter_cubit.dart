import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue: 0, wasIncreased: false));

  void increment() => emit(
      CounterState(counterValue: state.counterValue + 1, wasIncreased: true));

  void decrement() => emit(
      CounterState(counterValue: state.counterValue - 1, wasIncreased: false));
}
