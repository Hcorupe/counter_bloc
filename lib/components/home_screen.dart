import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';
import '../cubit/counter_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
        buildWhen: (previousState, currentState) =>
            previousState != currentState,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Bloc'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.counterLabel),
                  if (state.hasError) Text(state.errorMessage!),
                  if (state.isLoading) const Text('Loading...')
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: context.read<CounterCubit>().increment,
            ),
          );
        });
  }
}
