import 'package:counter/components/home_screen.dart';
import 'package:counter/cubit/counter_cubit.dart';
import 'package:counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../test_util/mocks.mocks.dart';

void main() {
  group(
    '$HomeScreen tests',
    () {
      testWidgets(
        'Shows a loading test when $CounterCubit is loading',
        (widgetTester) async {
          final bloc = MockCounterCubit();
          when(bloc.state).thenReturn(
              CounterState.initialState().copyWith(isLoading: true));
          when(bloc.stream).thenAnswer((_) => const Stream.empty());
          await widgetTester.pumpWidget(
            MaterialApp(
              home: BlocProvider<CounterCubit>(
                create: (_) => bloc,
                child: const HomeScreen(),
              ),
            ),
          );

          final finder = find.text('Loading...');
          expect(finder, findsOneWidget);
        },
      );
    },
  );
}
