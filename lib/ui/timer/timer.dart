import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../provider.dart';
import 'duartion_menu.dart';
import 'model/timer_view_state.dart';
import 'timer_button.dart';

/// Timer Page
/// Presenter ?
class TimerPage extends HookConsumerWidget {
  /// Indexed Stack用のID
  static String id = "timer_page";

  /// No Doc
  const TimerPage({Key? key}) : super(key: key);

  Widget _displayRemaindDuration(BuildContext context, TimerViewState state) {
    if (state is! TimerViewStateActivated) {
      final message = state is TimerViewStateCompleted ? "交換日" : "未登録";
      return Column(
        children: [
          Text(
            message,
            style: Theme.of(context).textTheme.headline2,
          ),
          Visibility(
              visible: false,
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
              child: Text(
                '予定日:',
                style: Theme.of(context).textTheme.headline6,
              )),
        ],
      );
    }

    final remaindDays = state.remainedDays;
    final endDate = DateFormat('yyyy年MM月dd日').format(state.endDate);
    return Column(
      children: [
        Text(
          '残り $remaindDays 日',
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          '予定日: $endDate',
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registerdTimer = ref.watch(timerViewModelProvider);
    final notifier = ref.read(timerViewModelProvider.notifier);
    useEffect(() {
      Future.microtask(() async {
        notifier.findTimer();
      });
    }, const []);
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              _displayRemaindDuration(context, registerdTimer),
            ],
          ),
          DurationMenu(),
          TimerButton()
        ]);
  }
}
