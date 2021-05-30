import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/application/wearing_timer/find/find_output_data.dart';
import 'package:test_app/domain/models/wearing_timer/wearing_timer.dart';

void main() {
  group("Find OutputData test", () {
    test('initialize with no parameters', () {
      final findOutputData = FindOutputData();
      expect(findOutputData.duration, isNull);
      expect(findOutputData.startDate, isNull);
      expect(findOutputData.endDate, isNull);
    });

    test('initialize with parameters', () {
      final startDate = DateTime(2021, 4, 5);
      final endDate = DateTime(2021, 4, 9);
      final duration = 4;
      final findOutputData = FindOutputData(
          startDate: startDate, endDate: endDate, duration: duration);
      expect(findOutputData.duration, equals(duration));
      expect(findOutputData.startDate, equals(startDate));
      expect(findOutputData.endDate, equals(endDate));
    });

    test('fromWearingTimer factory', () {
      final startDate = DateTime(2021, 4, 5);
      final endDate = DateTime(2021, 4, 9);
      final duration = 4;
      final wearingTimer = WearingTimer(
          startDate: startDate, endDate: endDate, duration: duration);
      final findOutputData = FindOutputData.fromWearingTimer(wearingTimer);
      final expectedResult = FindOutputData(
          startDate: startDate, endDate: endDate, duration: duration);

      expect(findOutputData, equals(expectedResult));
    });
  });
}
