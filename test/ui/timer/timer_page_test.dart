import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/application/wearing_timer/wearing_timer_controller.dart';
import 'package:test_app/provider.dart';
import 'package:test_app/ui/timer/model/timer_view_model.dart';
import 'package:test_app/ui/timer/timer.dart';

import '../../utils/data/fake_wearing_timer.dart';
import '../../utils/fake_local_notification.dart';
import '../../utils/fake_wearing_timer_repository_impl.dart';

Widget renderWithRiverpodForTest(Widget child) {
  return ProviderScope(
      overrides: [
        wearingTimerRepositoryProvider.overrideWithProvider(
            Provider((ref) => FakeWearingTimerRepositoryImpl())),
        localNotificationProvider
            .overrideWithProvider(Provider((ref) => FakeLocalNotification()))
      ],
      child: Directionality(
          textDirection: TextDirection.ltr, child: Material(child: child)));
}

void main() {
  group("timer page test", () {
    testWidgets(
        'Given initial State '
        'When initial state '
        'Then timer page displays 未登録', (tester) async {
      await tester.pumpWidget(renderWithRiverpodForTest(TimerPage()));

      final textFinder = find.text("未登録");
      expect(textFinder, findsOneWidget);
    });

    testWidgets(
        'Given registerd Timer '
        'When timer page is loaded '
        'Then timer page displays 未登録', (tester) async {
      await tester.pumpWidget(ProviderScope(
          overrides: [
            wearingTimerRepositoryProvider.overrideWithProvider(
                Provider((ref) => FakeWearingTimerRepositoryImpl())),
            localNotificationProvider.overrideWithProvider(
                Provider((ref) => FakeLocalNotification())),

            /// TimerActivated state
            timerViewModelProvider.overrideWithValue(TimerViewModel(
                presenterData: TestWearingTimerData
                    .findPresenterDataFilledWithAllParameters(),
                wearingTimerController: WearingTimerController())),
          ],
          child: Directionality(
              textDirection: TextDirection.ltr,
              child: Material(child: TimerPage()))));

      final expectedDuration = TestWearingTimerData.duration;
      final textFinder = find.text('残り $expectedDuration 日');
      expect(textFinder, findsOneWidget);
    });
  });
}
