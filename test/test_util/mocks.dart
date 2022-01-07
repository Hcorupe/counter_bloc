

import 'package:counter/cubit/counter_cubit.dart';
import 'package:counter/service/counter_service.dart';
import 'package:mockito/annotations.dart';

/// Generate files with this command:
/// flutter packages pub run build_runner build --delete-conflicting-outputs

@GenerateMocks([
  CounterCubit,
  CounterService,
])
void main(){}