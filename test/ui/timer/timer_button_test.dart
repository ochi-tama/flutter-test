import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/provider.dart';
import 'package:test_app/ui/timer/timer_button.dart';

import '../../utils/fake_local_notification.dart';
import '../../utils/fake_wearing_timer_repository_impl.dart';

void main() {
  group("timer button widget", () {
    testWidgets(
        'Given initial State '
        'When user taps on the start button '
        'Then the button switchs to stop button', (tester) async {
      await tester.pumpWidget(ProviderScope(
          overrides: [
            wearingTimerRepositoryProvider.overrideWithProvider(
                Provider((ref) => FakeWearingTimerRepositoryImpl())),
            localNotificationProvider.overrideWithProvider(
                Provider((ref) => FakeLocalNotification()))
          ],
          child: Directionality(
              textDirection: TextDirection.ltr, child: TimerButton())));

      expect(find.text("開始"), findsOneWidget);

      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      expect(find.text("開始"), findsNothing);
      expect(find.text("停止"), findsOneWidget);

      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      expect(find.text("停止"), findsNothing);
      expect(find.text("開始"), findsOneWidget);
    });
  });
}
