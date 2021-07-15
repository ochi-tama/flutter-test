import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/wearing_timer/wearing_timer.dart';

part 'find_output_data.freezed.dart';

/// No Doc
// ignore: one_member_abstracts
@freezed
class FindOutputData with _$FindOutputData {
  const FindOutputData._();

  /// No Doc
  const factory FindOutputData(
      {DateTime? startDate,
      DateTime? endDate,
      int? duration,
      String? errorMessages}) = _FindOutputData;

  /// No Doc
  static FindOutputData fromWearingTimer(WearingTimer? wearingTimer) {
    return FindOutputData(
        startDate: wearingTimer?.startDate,
        endDate: wearingTimer?.endDate,
        duration: wearingTimer?.duration);
  }

  /// No Doc
  static FindOutputData initial() {
    return FindOutputData();
  }
}
