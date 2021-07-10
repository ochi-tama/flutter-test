import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod/riverpod.dart';
import 'package:test_app/provider.dart';

import '../../utils/data/fake_wearing_timer.dart';
import '../../utils/fake_wearing_timer_repository_impl.dart';

void main() {
  group("wearing timer controller test (provider)", () {
    test("find function", () async {
      final container = ProviderContainer(overrides: [
        wearingTimerRepositoryProvider.overrideWithProvider(
            Provider((ref) => FakeWearingTimerRepositoryImpl()))
      ]);

      final wearingTimerController =
          container.read(wearingTimerControllerProvider);
      final initState = container.read(findPresenterNotifierProvider);

      expect(
          initState, equals(TestWearingTimerData.initialFindPresenterData()));

      await container
          .read(wearingTimerRepositoryProvider)
          .save(TestWearingTimerData.wearingTimerNotStarted());

      await wearingTimerController.findWearingTimer();
      expect(container.read(findPresenterNotifierProvider),
          equals(TestWearingTimerData.findPresenterDataTimerNotStarted()));
    });

    test("register function", () async {
      final container = ProviderContainer(overrides: [
        wearingTimerRepositoryProvider.overrideWithProvider(
            Provider((ref) => FakeWearingTimerRepositoryImpl()))
      ]);

      final wearingTimerController =
          container.read(wearingTimerControllerProvider);
      final initState = container.read(findPresenterNotifierProvider);

      expect(
          initState, equals(TestWearingTimerData.initialFindPresenterData()));

      await container
          .read(wearingTimerRepositoryProvider)
          .save(TestWearingTimerData.wearingTimerNotStarted());

      await wearingTimerController.findWearingTimer();

      expect(container.read(findPresenterNotifierProvider),
          equals(TestWearingTimerData.findPresenterDataTimerNotStarted()));
    });
  });
}
