import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider.dart';
import 'model/timer_view_state.dart';

/// No Doc
class DurationMenu extends HookConsumerWidget {
  final Map<String, int> _durationMap = const {
    "1day": 1,
    "1w": 7,
    "2w": 14,
    "1m": 30,
  };

  Widget _buildDurationButton(String description, int value, int? groupValue,
      void Function(int?) onChanged) {
    return Column(
      children: [
        Radio<int>(
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
    final _handler = ref.watch(timerViewModelProvider.notifier).setDuration;

    final _visible = _timerState is TimerViewStateActivated ? false : true;
    final groupValue = _timerState.duration;
    final buttonList = _durationMap.entries
        .map((e) => _buildDurationButton(e.key, e.value, groupValue, _handler))
        .toList();
    return AnimatedOpacity(
        opacity: _visible ? 1.0 : 0.0,
        duration: Duration(milliseconds: 500),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: buttonList,
        ));
  }
}
