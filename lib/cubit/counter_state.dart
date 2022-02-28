part of 'counter_cubit.dart';

class CounterState extends Equatable {
  int counterValue;
  bool wasIncrement;
  CounterState({
    required this.counterValue,
    this.wasIncrement = false,
  });

  @override
  List<Object?> get props => [
        counterValue,
        wasIncrement,
      ];
}
