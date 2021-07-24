import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider.dart';
import 'duartion_menu.dart';
import 'timer_button.dart';

/// Timer Page
/// Presenter ?
class TimerPage extends HookConsumerWidget {
  /// Indexed Stack用のID
  static String id = "timer_page";

  String _displayRemainedDays(int? days) {
    if (days == null) {
      return "未登録";
    } else {
      return '残り $days 日';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final remainedDays =
        ref.watch(timerViewModelProvider.select((value) => value.remainedDays));
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
        Text(
          _displayRemainedDays(remainedDays),
          style: Theme.of(context).textTheme.headline2,
        ),
        DurationMenu(),
        TimerButton()
      ],
    );
  }
}
