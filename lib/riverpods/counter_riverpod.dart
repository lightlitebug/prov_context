import 'package:riverpod/riverpod.dart';

final counterRiverpod = StateNotifierProvider<CounterRiverpod>((ref) {
  return CounterRiverpod();
});

class CounterRiverpod extends StateNotifier<int> {
  CounterRiverpod() : super(0);

  void increment() => state++;
}
