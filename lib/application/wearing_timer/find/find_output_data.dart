import 'package:flutter/cupertino.dart';

import '../../../domain/models/wearing_timer/wearing_timer.dart';

/// No Doc
// ignore: one_member_abstracts
@immutable
class FindOutputData {
  /// No Doc
  FindOutputData({this.startDate, this.endDate, this.duration});

  /// No Doc
  factory FindOutputData.fromWearingTimer(WearingTimer? wearingTimer) {
    return FindOutputData(
        startDate: wearingTimer?.startDate,
        endDate: wearingTimer?.endDate,
        duration: wearingTimer?.duration);
  }

  /// No Doc
  final DateTime? startDate;

  /// No Doc
  final DateTime? endDate;

  /// No Doc
  final int? duration;

  @override
  bool operator ==(Object other) =>
      other is FindOutputData &&
      other.startDate == startDate &&
      other.endDate == endDate &&
      other.duration == duration;

  @override
  int get hashCode => hashValues(startDate, endDate, duration);
}
