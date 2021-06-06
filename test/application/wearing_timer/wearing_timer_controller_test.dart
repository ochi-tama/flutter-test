import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod/riverpod.dart';
import 'package:test_app/provider.dart';

import '../../utils/data/fake_wearing_timer.dart';
import '../../utils/fake_find_interactor.dart';
import '../../utils/fake_register_interactor.dart';

void main() {
  group("wearing timer controller test (provider)", () {
    test("find function exposes wearing timer to presenter provider", () async {
      final container = ProviderContainer(overrides: [
        findInteractorProvider.overrideWithProvider(Provider((ref) {
          final findOutputPort = ref.read(findOutputPresenterProvider);
          return FakeFindInteractor(findOutputPort: findOutputPort);
        }))
      ]);

      final wearingTimerController =
          container.read(wearingTimerControllerProvider);

      await wearingTimerController.findWearingTimer();

      final presenter = container.read(findOutputPresenterProvider);

      expect(presenter.duration, equals(fakeActiveWearingTimer.duration));
      expect(presenter.startDate, equals(fakeActiveWearingTimer.startDate));
      expect(presenter.endDate, isNull);
    });

    test("register function", () async {
      final container = ProviderContainer(overrides: [
        registerInteractorProvider.overrideWithProvider(Provider((ref) {
          final registerOutputPort = ref.read(registerOutputPresenterProvider);
          return FakeRegisterInteractor(registerOutputPort: registerOutputPort);
        }))
      ]);

      final wearingTimerController =
          container.read(wearingTimerControllerProvider);

      await wearingTimerController.registerWearingTimer(registerInputData);

      final presenter = container.read(registerOutputPresenterProvider);

      expect(presenter.duration, equals(fakeStartedWearingTimer.duration));
      expect(presenter.startDate, equals(fakeStartedWearingTimer.startDate));
      expect(presenter.endDate, equals(fakeStartedWearingTimer.endDate));
    });
  });
}
