import 'package:freezed_annotation/freezed_annotation.dart';

part 'box.freezed.dart';

@freezed
class Box with _$Box {
  factory Box({
    required int xSmallBoxCount,
  }) = _Box;
}
