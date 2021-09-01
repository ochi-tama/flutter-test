import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'complete_output_data.dart';

part 'complete_presenter_data.freezed.dart';

/// No Doc
@freezed
class CompletePresenterData with _$CompletePresenterData {
  const CompletePresenterData._();

  /// No Doc
  const factory CompletePresenterData({
    DateTime? startDate,
    DateTime? endDate,
    int? duration,
  }) = _CompletePresenterData;

  /// No Doc
  static CompletePresenterData fromCompleteOutputData(
      CompleteOutputData completeOutputData) {
    return CompletePresenterData(
      startDate: completeOutputData.startDate,
      endDate: completeOutputData.endDate,
    );
  }
}
