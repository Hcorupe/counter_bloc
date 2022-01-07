import 'package:counter/cubit/counter_state.dart';
import 'package:counter/service/counter_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  final CounterService _counterService;

  CounterCubit(this._counterService) : super(CounterState.initialState());

  Future<void> increment() async {
    emit(state.copyWith(isLoading: true));

    try {
      int count = await _counterService.increment(state.count);
      emit(state.copyWith(
        isLoading: false,
        count: count,
        clearError: true,
      ));
    } on CounterException catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.message));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: ' Unknown Error'));
    }
  }
}
