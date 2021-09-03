import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/provider.dart';
import 'package:test_app/ui/timer/model/timer_view_state.dart';

import '../../utils/data/fake_wearing_timer.dart';
import '../../utils/fake_local_notification.dart';
import '../../utils/fake_wearing_timer_repository_impl.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late ProviderContainer container;
  setUp(() {
    container = ProviderContainer(overrides: [
      wearingTimerRepositoryProvider.overrideWithProvider(
          Provider((ref) => FakeWearingTimerRepositoryImpl())),
      localNotificationProvider
          .overrideWithProvider(Provider((ref) => FakeLocalNotification()))
    ]);
  });
  group("timer model view test", () {
    test("timer model view initiaize state", () {
      final timerModelState = container.read(timerViewModelProvider);
      expect(timerModelState, TimerViewState.initial());
    });

    test("timer model view set duration by notifier", () async {
      final container = ProviderContainer();
      final duration = 30;
      final initialState = container.read(timerViewModelProvider);
      final timerModelViewNotifier =
          container.read(timerViewModelProvider.notifier);

      timerModelViewNotifier.setDuration(duration);
      final nextState = container.read(timerViewModelProvider);
      expect(initialState, isNot(equals(nextState)));
      expect(nextState, equals(TimerViewState.durationSet(duration: duration)));
    });

    test("timer model view register timer by notifier", () async {
      final notifier = container.read(timerViewModelProvider.notifier);

      expect(container.read(timerViewModelProvider),
          equals(TimerViewState.initial()));

      await notifier.registerTimer();

      /// 時刻を内部で見ているので数値が分からない
      expect(container.read(timerViewModelProvider) is TimerViewStateActivated,
          isTrue);
    });
  });

  group("find timer fuction", () {
    test("timer model view find timer by notifier", () async {
      final notifier = container.read(timerViewModelProvider.notifier);

      expect(container.read(timerViewModelProvider),
          equals(TimerViewState.initial()));

      await notifier.findTimer();

      /// 時刻を内部で見ているので数値が分からない
      expect(container.read(timerViewModelProvider),
          equals(TimerViewState.initial()));
    });

    test("timer model view find timer by notifier", () async {
      final notifier = container.read(timerViewModelProvider.notifier);

      expect(container.read(timerViewModelProvider),
          equals(TimerViewState.initial()));

      final testData = TestWearingTimerData.wearingTimerStarted();
      await container.read(wearingTimerRepositoryProvider).save(testData);

      await notifier.findTimer();
      final expectedState = TimerViewState.createStateFromResponse(
          TestWearingTimerData.findPresenterDataFilledWithAllParameters());

      /// 時刻を内部で見ているので数値が分からない
      expect(container.read(timerViewModelProvider), equals(expectedState));
    });
  });

  group("complete timer function", () {
    test(
        'Given a wearing timer is registerd '
        'When complete function is triggerd '
        'Then timer state is updated to complete state', () async {
      final testData = TestWearingTimerData.wearingTimerStarted();
      await container.read(wearingTimerRepositoryProvider).save(testData);
      final timerViewModelHandler =
          container.read(timerViewModelProvider.notifier);
      await timerViewModelHandler.completeTimer();
      // final expectedState = container.read(timerViewModelProvider);
      expect(container.read(timerViewModelProvider),
          isA<TimerViewStateCompleted>());
    });
    test(
        'Given a wearing timer is not registerd '
        'When complete function is triggerd '
        'Then timer state is not changed', () async {
      final timerViewModelHandler =
          container.read(timerViewModelProvider.notifier);
      await timerViewModelHandler.completeTimer();
      // final expectedState = container.read(timerViewModelProvider);
      expect(
          container.read(timerViewModelProvider), isA<TimerViewStateInitial>());
    });
  });
}
