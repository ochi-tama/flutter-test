import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod/riverpod.dart';
import 'package:test_app/application/wearing_timer/complete/data/complete_presenter_data.dart';
import 'package:test_app/application/wearing_timer/wearing_timer_controller.dart';
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

    group("complete function", () {
      test(
          'Given a timer is already registerd '
          'When complete function is triggerd '
          'Then a completed timer data is reflected to the presenterData',
          () async {
        final testData = TestWearingTimerData.wearingTimerStarted();
        final container = ProviderContainer(overrides: [
          wearingTimerRepositoryProvider.overrideWithProvider(Provider(
              (ref) => FakeWearingTimerRepositoryImpl(wearingTimer: testData)))
        ]);

        final completeInteractor = container.read(completeInteractorProvider);
        final wearingTimerController =
            WearingTimerController(completeInputPort: completeInteractor);

        await wearingTimerController.completeWearingTimer();

        final expected = container.read(completePresenterProvider);
        expect(
            expected,
            equals(CompletePresenterData(
                startDate: testData.startDate, endDate: testData.endDate)));
      });
    });
  });
}
