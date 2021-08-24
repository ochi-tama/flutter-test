import 'package:riverpod/riverpod.dart';

import '../../../application/wearing_timer/find/data/find_presenter_data.dart';
import '../../../application/wearing_timer/register/register_input_data.dart';
import '../../../application/wearing_timer/wearing_timer_controller.dart';
import '../../../provider.dart';
import '../../../utils/notification_plugin.dart';
import 'timer_view_state.dart';

/// TimerViewModel
class TimerViewModel extends StateNotifier<TimerViewState> {
  /// Constructor
  TimerViewModel({required ProviderRefBase ref})
      : _ref = ref,
        _wearingTimerController = ref.read(wearingTimerControllerProvider),
        _plugin = ref.read(localNotificationProvider),
        super(TimerViewState.createStateFromResponse(
            ref.read(findPresenterNotifierProvider)));

  final ProviderRefBase _ref;
  final WearingTimerController _wearingTimerController;
  final NotificationPlugin _plugin;

  FindPresenterData _readDateFromProvider() {
    return _ref.read(findPresenterNotifierProvider);
  }

  /// No Doc
  void setDuration(int? duration) {
    if (duration == null) return;
    state = TimerViewState.durationSet(duration: duration);
  }

  /// No Doc
  Future<void> findTimer() async {
    await _wearingTimerController.findWearingTimer();
    state = TimerViewState.createStateFromResponse(_readDateFromProvider());
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
    _plugin.cancelNotification();
    state = TimerViewState.createStateFromResponse(_readDateFromProvider());
  }

  /// register timer & set notification
  Future<void> registerTimer() async {
    final duration = state.duration;
    if (duration == null) return;

    final startDate = DateTime.now();
    final registerInputData = RegisterInputData(startDate, duration);

    await _wearingTimerController.registerWearingTimer(registerInputData);
    state = TimerViewState.createStateFromResponse(_readDateFromProvider());
    _plugin.zonedScheduleNotification(startDate, duration);
  }
}
