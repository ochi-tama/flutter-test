import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/models/wearing_timer/wearing_duration.dart';
import '../../provider.dart';
import 'model/timer_view_state.dart';

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
    final _timerState = ref.watch(timerViewModelProvider);
    final _handler = ref.read(timerViewModelProvider.notifier).setDuration;
    final _visible = (_timerState is TimerViewStateActivated ||
            _timerState is TimerViewStateCompleted)
        ? false
        : true;
    final groupValue = _timerState.duration;
    final buttonList = WearingDuration.durationMap.entries
        .map((e) => _buildDurationButton(e.key, e.value, groupValue, _handler))
        .toList();
    // TODO: 透明時にはボタンを非アクティブにする
    return AnimatedOpacity(
        opacity: _visible ? 1.0 : 0.0,
        duration: Duration(milliseconds: 500),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: buttonList,
        ));
  }
}
