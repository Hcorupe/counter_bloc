import 'package:bloc_test/bloc_test.dart';
import 'package:counter/cubit/counter_cubit.dart';
import 'package:counter/cubit/counter_state.dart';
import 'package:counter/service/counter_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../test_util/mocks.mocks.dart';

void main() {
  group('$CounterCubit tests', () {
    test('Blocs initial state should equal ${CounterState.initialState()}',
        () async {
      final counterService = MockCounterService();
      final bloc = CounterCubit(counterService);
      expect(bloc.state, equals(CounterState.initialState()));
    });

    blocTest<CounterCubit, CounterState>(
      'increment emits a loading state and then puts result of service into count',
      build: () {
        final counterService = MockCounterService();
        when(counterService.increment(any)).thenAnswer((_) async => 1);
        return CounterCubit(counterService);
      },
      act: (bloc) => bloc.increment(),
      expect: () => <CounterState>[
        CounterState(0, null, true),
        CounterState(1, null, false),
      ],
    );

    blocTest<CounterCubit, CounterState>(
      'increment emits a loading state and then puts error of service into state',
      build: () {
        final counterService = MockCounterService();
        when(counterService.increment(any))
            .thenAnswer((_) async => throw CounterException('error'));
        return CounterCubit(counterService);
      },
      act: (bloc) => bloc.increment(),
      expect: () => <CounterState>[
        CounterState(0, null, true),
        CounterState(0, 'error', false),
      ],
    );
  });
}
