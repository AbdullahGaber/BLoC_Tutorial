import 'package:bloc_test/bloc_test.dart';
import 'package:bloc_tutorial/cubit/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('CounterCubit', () {
    CounterCubit? counterCubit;
    blocTest<CounterCubit, CounterState>(
      'Test Increment method will incremet state to CounterState(counterValue: 1,wasIncrement: true,) ',
      build: () => counterCubit!,
      act: (state) => counterCubit!.increment(),
      expect: () => [
        CounterState(
          counterValue: 1,
          wasIncrement: true,
        ),
      ],
    );
    blocTest<CounterCubit, CounterState>(
      'Test Increment method will decremet state to CounterState(counterValue: -1,wasIncrement: false,) ',
      build: () => counterCubit!,
      act: (state) => counterCubit!.decrement(),
      expect: () => [
        CounterState(
          counterValue: -1,
          wasIncrement: false,
        ),
      ],
    );
    test('Methods', () {
      expect(
        counterCubit?.state,
        CounterState(counterValue: 0),
      );
    });
    setUp(
      () {
        counterCubit = CounterCubit();
      },
    );
    tearDown(() {
      counterCubit?.close();
    });
  });
}
