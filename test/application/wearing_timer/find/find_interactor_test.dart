import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/application/wearing_timer/find/data/find_presenter_data.dart';
import 'package:test_app/application/wearing_timer/find/find_interactor.dart';
import 'package:test_app/domain/models/wearing_timer/wearing_timer.dart';
import 'package:test_app/provider.dart';

import '../../../utils/fake_wearing_timer_repository_impl.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group("Find interactor test", () {
    late ProviderContainer container;
    late WearingTimer testTimer;
    late FindInteractor findInteractor;

    setUp(() {
      testTimer = WearingTimer(startDate: DateTime(2021, 4, 17), duration: 14);
      container = ProviderContainer(
        overrides: [
          wearingTimerRepositoryProvider.overrideWithProvider(
              Provider((ref) => FakeWearingTimerRepositoryImpl()))
        ],
      );
      final notifier = container.read(findPresenterNotifierProvider.notifier);
      final repository = container.read(wearingTimerRepositoryProvider);
      findInteractor =
          FindInteractor(wbRepository: repository, findOutputPort: notifier);
    });

    test('find method return a weaing timer object from repository', () async {
      await container.read(wearingTimerRepositoryProvider).save(testTimer);
      await findInteractor.handle();
      final updatedState = container.read(findPresenterNotifierProvider);
      final expectedResult =
          FindPresenterData(startDate: DateTime(2021, 4, 17), duration: 14);

      expect(updatedState, equals(expectedResult));
    });

    test('find method return null object if no data stored', () async {
      await findInteractor.handle();
      final updatedState = container.read(findPresenterNotifierProvider);
      final expectedResult = FindPresenterData();
      expect(updatedState, equals(expectedResult));
    });
  });
}
