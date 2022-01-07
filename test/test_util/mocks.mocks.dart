// Mocks generated by Mockito 5.0.17 from annotations
// in counter/test/test_util/mocks.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:counter/cubit/counter_cubit.dart' as _i4;
import 'package:counter/cubit/counter_state.dart' as _i2;
import 'package:counter/service/counter_service.dart' as _i6;
import 'package:flutter_bloc/flutter_bloc.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeCounterState_0 extends _i1.Fake implements _i2.CounterState {}

class _FakeStreamSubscription_1<T> extends _i1.Fake
    implements _i3.StreamSubscription<T> {}

/// A class which mocks [CounterCubit].
///
/// See the documentation for Mockito's code generation for more information.
class MockCounterCubit extends _i1.Mock implements _i4.CounterCubit {
  MockCounterCubit() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.CounterState get state => (super.noSuchMethod(Invocation.getter(#state),
      returnValue: _FakeCounterState_0()) as _i2.CounterState);
  @override
  _i3.Stream<_i2.CounterState> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
              returnValue: Stream<_i2.CounterState>.empty())
          as _i3.Stream<_i2.CounterState>);
  @override
  bool get isClosed =>
      (super.noSuchMethod(Invocation.getter(#isClosed), returnValue: false)
          as bool);
  @override
  _i3.Future<void> increment() =>
      (super.noSuchMethod(Invocation.method(#increment, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.StreamSubscription<_i2.CounterState> listen(
          void Function(_i2.CounterState)? onData,
          {Function? onError,
          void Function()? onDone,
          bool? cancelOnError}) =>
      (super.noSuchMethod(
              Invocation.method(#listen, [
                onData
              ], {
                #onError: onError,
                #onDone: onDone,
                #cancelOnError: cancelOnError
              }),
              returnValue: _FakeStreamSubscription_1<_i2.CounterState>())
          as _i3.StreamSubscription<_i2.CounterState>);
  @override
  void emit(_i2.CounterState? state) =>
      super.noSuchMethod(Invocation.method(#emit, [state]),
          returnValueForMissingStub: null);
  @override
  void onChange(_i5.Change<_i2.CounterState>? change) =>
      super.noSuchMethod(Invocation.method(#onChange, [change]),
          returnValueForMissingStub: null);
  @override
  void addError(Object? error, [StackTrace? stackTrace]) =>
      super.noSuchMethod(Invocation.method(#addError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  void onError(Object? error, StackTrace? stackTrace) =>
      super.noSuchMethod(Invocation.method(#onError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  _i3.Future<void> close() => (super.noSuchMethod(Invocation.method(#close, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
}

/// A class which mocks [CounterService].
///
/// See the documentation for Mockito's code generation for more information.
class MockCounterService extends _i1.Mock implements _i6.CounterService {
  MockCounterService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<int> increment(int? value) =>
      (super.noSuchMethod(Invocation.method(#increment, [value]),
          returnValue: Future<int>.value(0)) as _i3.Future<int>);
}
