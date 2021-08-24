import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/provider.dart';

import '../../../utils/data/fake_wearing_timer.dart';

void main() {
  group("Find Presenter test", () {
    test('output function updates the values of find output notifier', () {
      final container = ProviderContainer();
      final notifier = container.read(findPresenterNotifierProvider.notifier);

      expect(container.read(findPresenterNotifierProvider),
          equals(TestWearingTimerData.initialFindPresenterData()));

      final outputData =
          TestWearingTimerData.findOutputDataFilledWithAllParameters();
      notifier.output(outputData);

      expect(
          container.read(findPresenterNotifierProvider),
          equals(
              TestWearingTimerData.findPresenterDataFilledWithAllParameters()));
    });
  });
}
