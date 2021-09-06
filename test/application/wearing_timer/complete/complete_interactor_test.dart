import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/application/wearing_timer/complete/complete_interactor.dart';
import 'package:test_app/application/wearing_timer/complete/data/complete_presenter_data.dart';
import 'package:test_app/provider.dart';

import '../../../utils/data/fake_wearing_timer.dart';
import '../../../utils/fake_wearing_timer_repository_impl.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group("Complete interactor test", () {
    late ProviderContainer container;

    setUp(() {
      container = ProviderContainer(
        overrides: [
          wearingTimerRepositoryProvider.overrideWithProvider(
              Provider((ref) => FakeWearingTimerRepositoryImpl()))
        ],
      );
    });

    test(
        'Given a wearingTimer is registerd '
        'When complete handler is triggerd '
        'Then presenter is updated by completedTimer', () async {
      final testData = TestWearingTimerData.wearingTimerStarted();
      final repository = FakeWearingTimerRepositoryImpl(wearingTimer: testData);
      final outputPort = container.read(completePresenterProvider.notifier);
      final completeInteractor =
          CompleteInteractor(repository: repository, outputPort: outputPort);
      await completeInteractor.handle();

      final completedTimer = await repository.find();

      expect(completedTimer?.actualEndDate, isNotNull);
      expect(
          container.read(completePresenterProvider),
          equals(CompletePresenterData(
              startDate: testData.startDate, endDate: testData.endDate)));
    });
    test(
        'Given wearingTimer is not registerd '
        'When complete handler is triggerd '
        'Then presenter is not updated', () async {
      final repository = FakeWearingTimerRepositoryImpl();
      final outputPort = container.read(completePresenterProvider.notifier);
      final completeInteractor =
          CompleteInteractor(repository: repository, outputPort: outputPort);
      await completeInteractor.handle();

      expect(container.read(completePresenterProvider),
          equals(CompletePresenterData()));
    });
  });
}
