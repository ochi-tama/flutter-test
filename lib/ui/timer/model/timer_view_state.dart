import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../application/wearing_timer/find/data/find_presenter_data.dart';

part 'timer_view_state.freezed.dart';

/// No Doc
extension TimerViewStateGetters on TimerViewState {
  /// No Doc
  bool get isLoading => this is TimerViewStateLoading;
}

/// No Doc
@freezed
class TimerViewState with _$TimerViewState {
  const TimerViewState._();

  /// No Doc
  factory TimerViewState({
    DateTime? startDate,
    DateTime? endDate,
    @Default(14) int? duration,
    int? remainedDays,
  }) = _TimerViewState;

  /// No Doc
  static TimerViewState createStateFromResponse(FindPresenterData data) {
    final startDate = data.startDate;
    final endDate = data.endDate;
    final duration = data.duration;

    if (startDate != null && endDate != null) {
      final remainedDays = endDate.difference(startDate).inDays;
      return TimerViewState.activated(
          startDate: startDate,
          endDate: endDate,
          duration: duration,
          remainedDays: remainedDays);
    }
    if (startDate != null && endDate == null) {
      return TimerViewState.beforeActivated(
          startDate: startDate, duration: duration);
    }

    return TimerViewState.initial();
  }

  /// initial state
  factory TimerViewState.initial(
      {@Default(14) int? duration, int? remainedDays}) = TimewViewStateInitial;

  /// loading state
  factory TimerViewState.loading(
      {@Default(14) int? duration, int? remainedDays}) = TimerViewStateLoading;

  /// timer not active
  factory TimerViewState.durationSet(
      {@Default(14) int? duration,
      int? remainedDays}) = TimerViewStateDurationSet;

  /// timer active state
  factory TimerViewState.beforeActivated(
      {required DateTime startDate,
      @Default(14) int? duration,
      int? remainedDays}) = TimerViewStateBeforeActivated;

  /// timer active state
  factory TimerViewState.activated(
      {required DateTime startDate,
      required DateTime endDate,
      @Default(14) int? duration,
      int? remainedDays}) = TimerViewStateActivated;

  /// error state
  factory TimerViewState.error(
      {DateTime? startDate,
      DateTime? endDate,
      @Default(14) int? duration,
      int? remainedDays,
      String? error}) = TimerViewStateError;
}
