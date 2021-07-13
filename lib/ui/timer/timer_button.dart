import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../provider.dart';
import 'model/timer_view_state.dart';

/// No Doc
final isTimerActivatedProvider = Provider<bool>((ref) {
  final viewModel = ref.watch(timerViewModelProvider);
  final isTimerActivated = viewModel is TimerViewStateActivated ? true : false;
  return isTimerActivated;
});

/// No Doc
class TimerButton extends HookConsumerWidget {
  /// No Doc
  Widget buildStartButton(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        onPressed: onPressedHandler,
        child: Text("Start"),
      ),
    );
  }

  /// NoDoc
  Widget buildStopButton(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          onPressed: onPressedHandler,
          child: Text("Stop"),
        ),
        FloatingActionButton(
          onPressed: onPressedHandler,
          child: Text("Cancel"),
        ),
      ],
    ));
  }

  /// No Doc
  void onPressedHandler() => print(123);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isTimerActivated = ref.watch(isTimerActivatedProvider);
    final handler = ref.read(timerViewModelProvider.notifier).registerTimer;
    if (isTimerActivated) {
      return ElevatedButton(onPressed: () => print(123), child: Text("停止"));
    }
    return ElevatedButton(onPressed: handler, child: Text("開始"));
  }
}
