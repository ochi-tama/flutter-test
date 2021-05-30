import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/application/wearing_timer/find/find_output_presenter.dart';

void main() {
  group("Find OutputData test", () {
    test('initialize', () {
      final startDate = DateTime(2021, 4, 5);
      final endDate = DateTime(2021, 4, 9);
      final duration = 4;
      final findOutputData = FindOutputPresenter(
          startDate: startDate, endDate: endDate, duration: duration);
      expect(findOutputData.duration, duration);
      expect(findOutputData.startDate, startDate);
      expect(findOutputData.endDate, endDate);
    });

    test('initialize factory', () {
      final findOutputData =
          FindOutputPresenter(startDate: null, endDate: null, duration: null);
      expect(findOutputData.duration, isNull);
      expect(findOutputData.startDate, isNull);
      expect(findOutputData.endDate, isNull);
    });
  });
}
