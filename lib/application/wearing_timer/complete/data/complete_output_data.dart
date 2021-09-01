import '../../../../domain/models/wearing_timer/wearing_timer.dart';

/// No Doc
class CompleteOutputData {
  /// No Doc
  CompleteOutputData({this.startDate, this.endDate, this.errorMessages});

  /// No Doc
  final DateTime? startDate;

  /// No Doc
  final DateTime? endDate;

  /// No Doc
  final String? errorMessages;

  /// No Doc
  static CompleteOutputData fromWearingTimer(WearingTimer wearingTimer) {
    return CompleteOutputData(
        startDate: wearingTimer.startDate, endDate: wearingTimer.endDate);
  }
}
