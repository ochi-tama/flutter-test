import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/application/wearing_timer/find/find_presenter_notifier.dart';
import 'package:test_app/domain/models/wearing_timer/wearing_duration.dart';
import 'package:test_app/provider.dart';
import 'package:test_app/ui/timer/duartion_menu.dart';

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
  group("duration menu test", () {
    testWidgets(
        'Given initial State '
        'When initial State '
        'Then default selected button is 2w', (tester) async {
      await tester.pumpWidget(renderWithRiverpodForTest(DurationMenu()));

      final widgetsList = tester.widgetList(find.byType(typeOf<Radio<int>>()));
      expect(widgetsList.length, equals(WearingDuration.durationMap.length));
      // Group value is an initial selected value of Radio button
      expect(
          widgetsList.first,
          isA<Radio<int>>().having(
              (s) => s.groupValue, "group value", WearingDuration.twoWeek));
    });
    testWidgets(
        'Given initial State '
        'When 1day Radio button is tapped'
        'Then group value is changed 1', (tester) async {
      await tester.pumpWidget(renderWithRiverpodForTest(DurationMenu()));

      final key = Key(WearingDuration.oneDayKey);
      await tester.tap(find.byKey(key));
      await tester.pump();
      // Group value is an initial selected value of Radio button
      final widgetsList = tester.widgetList(find.byType(typeOf<Radio<int>>()));
      expect(
          widgetsList.first,
          isA<Radio<int>>().having(
              (s) => s.groupValue, "group value", WearingDuration.oneDay));
    });

    testWidgets(
        'Given initial State '
        'When 1w Radio button is tapped'
        'Then group value is changed to 7', (tester) async {
      await tester.pumpWidget(renderWithRiverpodForTest(DurationMenu()));
      final key = Key(WearingDuration.oneWeekKey);
      await tester.tap(find.byKey(key));
      await tester.pump();
      // Group value is an initial selected value of Radio button
      final widgetsList = tester.widgetList(find.byType(typeOf<Radio<int>>()));
      expect(
          widgetsList.first,
          isA<Radio<int>>().having(
              (s) => s.groupValue, "group value", WearingDuration.oneWeek));
    });
    testWidgets(
        'Given initial State '
        'When 2w Radio button is tapped'
        'Then group value is changed 14', (tester) async {
      await tester.pumpWidget(renderWithRiverpodForTest(DurationMenu()));
      final key = Key(WearingDuration.twoWeekKey);
      await tester.tap(find.byKey(key));
      await tester.pump();
      // Group value is an initial selected value of Radio button
      final widgetsList = tester.widgetList(find.byType(typeOf<Radio<int>>()));
      expect(
          widgetsList.first,
          isA<Radio<int>>().having(
              (s) => s.groupValue, "group value", WearingDuration.twoWeek));
    });
    testWidgets(
        'Given initial State '
        'When 1m Radio button is tapped'
        'Then group value is changed to 30', (tester) async {
      await tester.pumpWidget(renderWithRiverpodForTest(DurationMenu()));
      final key = Key(WearingDuration.oneMonthKey);
      await tester.tap(find.byKey(key));
      await tester.pump();
      // Group value is an initial selected value of Radio button
      final widgetsList = tester.widgetList(find.byType(typeOf<Radio<int>>()));
      expect(
          widgetsList.first,
          isA<Radio<int>>().having(
              (s) => s.groupValue, "group value", WearingDuration.oneMonth));
    });
    testWidgets(
        'Given initial State '
        'When timer is activated'
        'Then duration menu is not visible', (tester) async {
      await tester.pumpWidget(ProviderScope(
          overrides: [
            wearingTimerRepositoryProvider.overrideWithProvider(Provider(
                (ref) => FakeWearingTimerRepositoryImpl(
                    wearingTimer: TestWearingTimerData.wearingTimerStarted()))),
            localNotificationProvider.overrideWithProvider(
                Provider((ref) => FakeLocalNotification())),
            findPresenterNotifierProvider.overrideWithValue(
                FindPresenterNotifier(
                    data: TestWearingTimerData
                        .findPresenterDataFilledWithAllParameters())),
          ],
          child: Directionality(
              textDirection: TextDirection.ltr,
              child: Material(child: DurationMenu()))));

      final widgetsList = tester.widgetList(find.byType(AnimatedOpacity));
      expect(widgetsList.first,
          isA<AnimatedOpacity>().having((s) => s.opacity, "opacity", 0.0));
    });
  });
}
