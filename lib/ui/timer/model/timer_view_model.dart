import 'package:riverpod/riverpod.dart';

import '../../../application/wearing_timer/find/data/find_presenter_data.dart';
import '../../../application/wearing_timer/register/register_input_data.dart';
import '../../../application/wearing_timer/wearing_timer_controller.dart';
import 'timer_view_state.dart';

/// TimerViewModel
class TimerViewModel extends StateNotifier<TimerViewState> {
  /// Constructor
  TimerViewModel(
      {required FindPresenterData findOutputPresenter,
      required WearingTimerController wearingTimerController})
      : _wearingTimerController = wearingTimerController,
        super(TimerViewState.createTimerViewStateFromResponse(
            findOutputPresenter.startDate,
            findOutputPresenter.endDate,
            findOutputPresenter.duration));

  //final FindOutputPresenter _findOutputPresenter;
  final WearingTimerController _wearingTimerController;

  /// final FindOutputPresenter _findOutputPresenter;
  void createTimerViewStateFromResponse(
      DateTime? startDate, DateTime? endDate, int? duration) {
    if (startDate == null && endDate == null && duration == null) {
      state = TimerViewState.initial();
    } else {
      state = TimerViewState.timerActivated(
          startDate: startDate, endDate: endDate, duration: duration);
    }
  }

  /// No Doc
  void setDuration(int? duration) {
    if (duration == null) return;
    state = TimerViewState.durationSet(duration: duration);
  }

  void findTimer() async {}

  /// register timer handler
  Future<void> registerTimer() async {
    final duration = state.duration;
    if (duration == null) return;

    final startDate = DateTime.now();
    final registerInputData = RegisterInputData(startDate, duration);

    /// TODO: 実行タイミングで調整する
    await _wearingTimerController.registerWearingTimer(registerInputData);
    await _wearingTimerController.findWearingTimer();
  }
}
