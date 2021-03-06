import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/models/wearing_timer/wearing_duration.dart';
import '../../provider.dart';

/// No Doc
class DurationMenu extends HookConsumerWidget {
  Widget _buildDurationButton(String description, int value, int? groupValue,
      void Function(int?) onChanged) {
    return Column(
      children: [
        Radio<int>(
            key: Key(description),
            value: value,
            groupValue: groupValue,
            onChanged: (selected) {
              onChanged(selected);
            }),
        Text(description)
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groupValue = ref.watch(timerViewModelProvider).duration;
    final _timerActivatedOrCompleted =
        ref.watch(isTimerActivatedOrCompletedProvider);
    final _handler = ref.read(timerViewModelProvider.notifier).setDuration;
    final buttonList = WearingDuration.durationMap.entries
        .map((e) => _buildDurationButton(e.key, e.value, groupValue, _handler))
        .toList();

    return AnimatedOpacity(
        opacity: _timerActivatedOrCompleted ? 0.0 : 1.0,
        duration: Duration(milliseconds: 500),
        child: IgnorePointer(
            ignoring: _timerActivatedOrCompleted,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: buttonList,
            )));
  }
}
