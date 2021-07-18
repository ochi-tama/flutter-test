import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/application/wearing_timer/register/register_output_data.dart';
import 'package:test_app/domain/models/wearing_timer/wearing_timer.dart';

void main() {
  group("Register OutputData test", () {
    test('initialize with no parameters', () {
      final registerOutputData = RegisterOutputData();
      expect(registerOutputData.duration, isNull);
      expect(registerOutputData.startDate, isNull);
      expect(registerOutputData.endDate, isNull);
    });

    test('initialize with parameters', () {
      final startDate = DateTime(2021, 4, 5);
      final endDate = DateTime(2021, 4, 9);
      final duration = 4;
      final registerOutputData = RegisterOutputData(
          startDate: startDate, endDate: endDate, duration: duration);
      expect(registerOutputData.duration, equals(duration));
      expect(registerOutputData.startDate, equals(startDate));
      expect(registerOutputData.endDate, equals(endDate));
    });

    test('fromWearingTimer factory', () {
      final startDate = DateTime(2021, 4, 5);
      final endDate = DateTime(2021, 4, 9);
      final duration = 4;
      final wearingTimer = WearingTimer(
          startDate: startDate, endDate: endDate, duration: duration);
      final registerOutputData =
          RegisterOutputData.fromWearingTimer(wearingTimer);
      final expectedResult = RegisterOutputData(
          startDate: startDate, endDate: endDate, duration: duration);

      expect(registerOutputData, equals(expectedResult));
    });
  });
}
