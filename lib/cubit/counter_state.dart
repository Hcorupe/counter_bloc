import 'package:flutter/cupertino.dart';

@immutable
class CounterState {
  final int count;
  final String? errorMessage;
  final bool isLoading;

  bool get hasError => errorMessage != null;

  String get counterLabel => 'Count is $count';

  CounterState(this.count, this.errorMessage, this.isLoading);

  factory CounterState.initialState() {
    return CounterState(0, null, false);
  }

  CounterState copyWith({
    int? count,
    String? errorMessage,
    bool? isLoading,
    bool clearError = false,
  }) {
    return CounterState(
      count ?? this.count,
      clearError ? null : errorMessage ?? this.errorMessage,
      isLoading ?? this.isLoading,
    );
  }

  @override
  String toString() => 'counterState($count, $errorMessage, $isLoading)';

  @override
  int get hashCode => hashValues(count, errorMessage, isLoading);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CounterState &&
            count == other.count &&
            errorMessage == other.errorMessage &&
            isLoading == other.isLoading);
  }
}
