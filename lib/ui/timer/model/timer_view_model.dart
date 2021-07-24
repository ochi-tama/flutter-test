import 'package:riverpod/riverpod.dart';

import '../../../application/wearing_timer/find/data/find_presenter_data.dart';
import '../../../application/wearing_timer/register/register_input_data.dart';
import '../../../application/wearing_timer/wearing_timer_controller.dart';
import '../../../utils/notification_plugin.dart';
import 'timer_view_state.dart';

/// TimerViewModel
class TimerViewModel extends StateNotifier<TimerViewState> {
  /// Constructor
  TimerViewModel(
      {required FindPresenterData presenterData,
      required WearingTimerController wearingTimerController,
      NotificationPlugin? notificationPlugin})
      : _wearingTimerController = wearingTimerController,
        _plugin = notificationPlugin,
        super(TimerViewState.createTimerViewStateFromResponse(
            presenterData.startDate,
            presenterData.endDate,
            presenterData.duration));

  final WearingTimerController _wearingTimerController;
  final NotificationPlugin? _plugin;

  /// No Doc
  void setDuration(int? duration) {
    if (duration == null) return;
    state = TimerViewState.durationSet(duration: duration);
  }

  /// No Doc
  Future<void> findTimer() async {
    await _wearingTimerController.findWearingTimer();
  }

  /// No Doc
  void updateRemainedDays() {
    state.maybeWhen((startDate, endDate, duration, remaiedDays) => null,
        activated: (startDate, endDate, duration, remainedDays) {
          final remainedDays = endDate.difference(DateTime.now()).inDays;
          state = TimerViewState.activated(
              startDate: startDate,
              endDate: endDate,
              duration: duration,
              remainedDays: remainedDays);
        },
        orElse: () => null);
  }

  /// No Doc
  Future<void> cancelTimer() async {
    await _wearingTimerController.cancelWearingTimer();
  }

  /// register timer & set notification
  Future<void> registerTimer() async {
    final duration = state.duration;
    if (duration == null) return;

    final startDate = DateTime.now();
    final registerInputData = RegisterInputData(startDate, duration);

    await _wearingTimerController.registerWearingTimer(registerInputData);
    _plugin?.zonedScheduleNotification(startDate, duration);
  }
}
