import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zerotohero/cubit/counter_cubit.dart';

void main() {
  group('Counter cubit', () {
    CounterCubit counterCubit;
    setUp(() {
      counterCubit = CounterCubit();
    });

    tearDown(() {
      counterCubit.close();
    });

    test('check the initial value of the counter is 0 ', () {
      expect(counterCubit.state,
          CounterState(counterValue: 0, wasIncreased: false));
    });

    blocTest(
      'check the increment function will emmit counterState(counter value 1,wasIncreased:true) ',
      build: () => counterCubit,
      act: (counterCubit) => counterCubit.increment(),
      expect: [CounterState(counterValue: 1, wasIncreased: true)],
    );

    blocTest(
      'check the decrement function will emmit counterState(counter value -1,wasIncreased:false) ',
      build: () => counterCubit,
      act: (counterCubit) => counterCubit.decrement(),
      expect: [CounterState(counterValue: -1, wasIncreased: false)],
    );
  });
}
