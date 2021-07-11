import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

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
  }) = _TimerViewState;

  /// No Doc
  static TimerViewState createTimerViewStateFromResponse(
      DateTime? startDate, DateTime? endDate, int? duration) {
    if (startDate == null && endDate == null && duration == null) {
      return TimerViewState.initial();
    }
    return TimerViewState.timerActivated(
        startDate: startDate, endDate: endDate, duration: duration);
  }

  /// initial state
  factory TimerViewState.initial({@Default(14) int? duration}) =
      TimewViewStateInitial;

  /// loading state
  factory TimerViewState.loading({@Default(14) int? duration}) =
      TimerViewStateLoading;

  /// timer not active
  factory TimerViewState.durationSet({@Default(14) int? duration}) =
      TimerViewStateDurationSet;

  /// timer active state
  factory TimerViewState.timerActivated(
      {DateTime? startDate,
      DateTime? endDate,
      @Default(14) int? duration}) = TimerViewStateTimerActivated;

  /// error state
  factory TimerViewState.error(
      {DateTime? startDate,
      DateTime? endDate,
      @Default(14) int? duration,
      String? error}) = TimerViewStateError;
}
