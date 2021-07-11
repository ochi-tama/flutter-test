import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'find_output_data.dart';

part 'find_presenter_data.freezed.dart';

/// No Doc
@freezed
class FindPresenterData with _$FindPresenterData {
  const FindPresenterData._();

  /// No Doc
  const factory FindPresenterData(
      {DateTime? startDate,
      DateTime? endDate,
      int? duration}) = _FindPresenterData;

  /// No Doc
  static FindPresenterData fromFindOutputData(FindOutputData findOutputData) {
    return FindPresenterData(
        startDate: findOutputData.startDate,
        endDate: findOutputData.endDate,
        duration: findOutputData.duration);
  }
}
