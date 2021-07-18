import 'package:flutter/cupertino.dart';

import '../../../domain/models/wearing_timer/wearing_timer.dart';

@immutable

/// No Doc
class RegisterOutputData {
  /// No Doc
  RegisterOutputData({this.startDate, this.endDate, this.duration});

  /// No Doc
  factory RegisterOutputData.fromWearingTimer(WearingTimer? wearingTimer) {
    return RegisterOutputData(
        startDate: wearingTimer?.startDate,
        endDate: wearingTimer?.endDate,
        duration: wearingTimer?.duration);
  }

  /// No Doc
  late final DateTime? startDate;

  /// No Doc
  late final DateTime? endDate;

  /// No Doc
  late final int? duration;

  @override
  bool operator ==(Object other) =>
      other is RegisterOutputData &&
      other.startDate == startDate &&
      other.endDate == endDate &&
      other.duration == duration;

  @override
  int get hashCode => hashValues(startDate, endDate, duration);
}
