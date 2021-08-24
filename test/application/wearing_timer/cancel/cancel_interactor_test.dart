import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/application/wearing_timer/cancel/cancel_interactor.dart';
import 'package:test_app/application/wearing_timer/find/data/find_presenter_data.dart';
import 'package:test_app/provider.dart';

import '../../../utils/data/fake_wearing_timer.dart';
import '../../../utils/fake_wearing_timer_repository_impl.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group("Cancel interactor test", () {
    late ProviderContainer container;
    late CancelInteractor cancelInteractor;

    setUp(() {
      container = ProviderContainer(
        overrides: [
          wearingTimerRepositoryProvider.overrideWithProvider(
              Provider((ref) => FakeWearingTimerRepositoryImpl()))
        ],
      );
      final repository = container.read(wearingTimerRepositoryProvider);
      final outputPort = container.read(findPresenterNotifierProvider.notifier);
      cancelInteractor =
          CancelInteractor(repository: repository, findOutputPort: outputPort);
    });

    test('cancel method delete wearing timer from repository', () async {
      final testRegisterData = TestWearingTimerData.registerInputData();
      await container
          .read(wearingTimerControllerProvider)
          .registerWearingTimer(testRegisterData);

      await cancelInteractor.handle();

      final result =
          await container.read(wearingTimerRepositoryProvider).find();
      expect(result, isNull);
      final outputData = await container.read(findPresenterNotifierProvider);
      expect(outputData, equals(FindPresenterData()));
    });

    test('find method return null object if no data stored', () async {});
  });
}
