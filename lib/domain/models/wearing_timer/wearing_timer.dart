import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'wearing_timer.freezed.dart';
part 'wearing_timer.g.dart';

@freezed

/// NoDoc
class WearingTimer with _$WearingTimer {
  const WearingTimer._();

  /// NoDoc
  factory WearingTimer(
      {required DateTime startDate,
      required int duration,
      String? id,
      DateTime? endDate,
      DateTime? actualEndDate}) = _WearingTimer;

  /// NoDoc
  factory WearingTimer.fromJson(Map<String, dynamic> json) =>
      _$WearingTimerFromJson(json);

  /// check if timer started
  bool isTimerStarted() {
    return endDate != null ? true : false;
  }

  /// Set Timer
  WearingTimer startTimer() {
    // TODO: durationのバリデーション, 値オブジェクト?
    return copyWith(endDate: startDate.add(Duration(days: duration)));
  }

  /// Set actualEndDate
  WearingTimer endTimer() {
    // TODO: startTimerが実行済みかを確認する
    if (!isTimerStarted()) {
      throw Exception("The timer doesn't start.");
    }
    return copyWith(actualEndDate: DateTime.now());
  }

  /// No Doc
  /*
  WearingTimer cancelTimer() {
    return copyWith(actualEndDate: null, endDate: null);
  }
  */
}
