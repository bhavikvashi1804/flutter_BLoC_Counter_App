import 'package:bloc/bloc.dart';

/// counter_cubit
/// A [Cubit] which manages an [int] as its state.

class CounterCubit extends Cubit<int> {
  /// constructor and its initial value is 0
  CounterCubit() : super(0);

  /// Add 1 to the current state.
  void increment() => emit(state + 1);

  /// Subtract 1 from the current state.
  void decrement() => emit(state - 1);
}
