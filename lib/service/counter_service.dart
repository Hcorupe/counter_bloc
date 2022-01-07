import 'dart:math';

abstract class CounterService {
  Future<int> increment(int value);
}

class CrappyCounter implements CounterService {
  static final _random = Random();

  @override
  Future<int> increment(int value) async {
    await Future.delayed(const Duration(seconds: 1));

    if (_random.nextInt(3) == 0) {
      throw CounterException('Counter crashed unexpectedly');
    }

    return value + 1;
  }
}

class CounterException {
  final String message;

  CounterException(this.message);
}
