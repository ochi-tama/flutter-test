import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart' as date;
import 'package:test_app/domain/models/wearing_timer/wearing_duration.dart';
import 'package:test_app/domain/models/wearing_timer/wearing_timer.dart';
import 'package:test_app/provider.dart';
import 'package:test_app/ui/timer/timer.dart';

import '../../utils/common.dart';
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
        'Given non activated timer registerd to repository'
        'When timer page is loaded '
        'Then timer page displays 未登録', (tester) async {
      await tester.pumpWidget(ProviderScope(
          overrides: [
            wearingTimerRepositoryProvider.overrideWithProvider(Provider(
                (ref) => FakeWearingTimerRepositoryImpl(
                    wearingTimer:
                        TestWearingTimerData.wearingTimerNotStarted()))),
            localNotificationProvider.overrideWithProvider(
                Provider((ref) => FakeLocalNotification())),
          ],
          child: Directionality(
              textDirection: TextDirection.ltr,
              child: Material(child: TimerPage()))));

      // final textFinder = find.text('残り $expectedDuration 日');
      final textFinder = find.text('未登録');
      expect(textFinder, findsOneWidget);
    });
    testWidgets(
        'Given an activated timer registerd to repository'
        'When timer page is loaded '
        'Then timer page displays 未登録', (tester) async {
      final testTimer =
          WearingTimer(startDate: DateTime.now(), duration: 14).startTimer();
      await tester.pumpWidget(
        ProviderScope(
            overrides: [
              wearingTimerRepositoryProvider.overrideWithProvider(Provider(
                  (ref) =>
                      FakeWearingTimerRepositoryImpl(wearingTimer: testTimer))),
              localNotificationProvider.overrideWithProvider(
                  Provider((ref) => FakeLocalNotification())),
            ],
            child: Directionality(
                textDirection: TextDirection.ltr,
                child: Material(child: TimerPage()))),
      );
      await tester.pumpAndSettle(Duration(seconds: 5));

      final remainedDaysFinder = find.text('残り ${testTimer.duration - 1} 日');
      final endDate = testTimer.endDate as DateTime;
      final endDateFinder =
          find.text('予定日: ${date.DateFormat("yyyy年MM月dd日").format(endDate)}');
      expect(remainedDaysFinder, findsOneWidget);
      expect(endDateFinder, findsOneWidget);
    });

    testWidgets(
        'Given initial state '
        'When a timer is registerd and canceled '
        'The last selected duration is still selected', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
            overrides: [
              wearingTimerRepositoryProvider.overrideWithProvider(
                  Provider((ref) => FakeWearingTimerRepositoryImpl())),
              localNotificationProvider.overrideWithProvider(
                  Provider((ref) => FakeLocalNotification())),
            ],
            child: Directionality(
                textDirection: TextDirection.ltr,
                child: Material(child: TimerPage()))),
      );
      await tester.pumpAndSettle(Duration(seconds: 5));
      final textFinder = find.text('未登録');
      expect(textFinder, findsOneWidget);

      final key = Key(WearingDuration.oneWeekKey);
      await tester.tap(find.byKey(key));
      await tester.pumpAndSettle(Duration(seconds: 5));
      expect(textFinder, findsOneWidget);

      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle(Duration(seconds: 5));

      /// Timer is canceled
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle(Duration(seconds: 5));

      expect(textFinder, findsOneWidget);
      final widgetsList = tester.widgetList(find.byType(typeOf<Radio<int>>()));
      expect(
          widgetsList.last,
          isA<Radio<int>>().having(
              (s) => s.groupValue, "group value", WearingDuration.oneWeek));
    });
  });
}
