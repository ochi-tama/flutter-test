import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/provider.dart';
import 'package:test_app/ui/timer/model/timer_view_state.dart';

import '../../utils/fake_wearing_timer_repository_impl.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() {
    const MethodChannel('plugins.flutter.io/shared_preferences')
        .setMockMethodCallHandler((methodCall) async {
      if (methodCall.method == 'getAll') {
        return <String, dynamic>{}; // set initial values here if desired
      }
      return null;
    });
  });
  group("timer model view test", () {
    late ProviderContainer container;
    setUp(() {
      container = ProviderContainer(overrides: [
        wearingTimerRepositoryProvider.overrideWithProvider(
            Provider((ref) => FakeWearingTimerRepositoryImpl()))
      ]);
    });

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
}
