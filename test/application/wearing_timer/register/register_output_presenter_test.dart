import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/application/wearing_timer/register/register_output_presenter.dart';

void main() {
  group("Find OutputData test", () {
    test('initialize', () {
      final startDate = DateTime(2021, 4, 5);
      final endDate = DateTime(2021, 4, 9);
      final duration = 4;
      final registerOutputData = RegisterOutputPresenter(
          startDate: startDate, endDate: endDate, duration: duration);
      expect(registerOutputData.duration, duration);
      expect(registerOutputData.startDate, startDate);
      expect(registerOutputData.endDate, endDate);
    });

    test('initialize factory', () {
      final registerOutputData = RegisterOutputPresenter(
          startDate: null, endDate: null, duration: null);
      expect(registerOutputData.duration, isNull);
      expect(registerOutputData.startDate, isNull);
      expect(registerOutputData.endDate, isNull);
    });
  });
}
