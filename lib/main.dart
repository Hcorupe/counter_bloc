import 'package:counter/cubit/counter_cubit.dart';
import 'package:counter/service/counter_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/home_screen.dart';

void main() {
  final counterService = CrappyCounter();
  runApp(MyApp(counterService: counterService));
}

class MyApp extends StatelessWidget {
  final CounterService counterService;

  const MyApp({
    Key? key,
    required this.counterService,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Bloc / Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (_) => CounterCubit(counterService),
        child: const HomeScreen(),
      ),
    );
  }
}
