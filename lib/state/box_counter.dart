import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'box_counter.g.dart';

@riverpod
class BoxCounter extends _$BoxCounter {
  @override
  int build() => 0;

  void increment() => state++;

  void decrement() => state--;
}
