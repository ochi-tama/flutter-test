import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/domain/models/wearing_timer/wearing_timer.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() {
    const MethodChannel('plugins.flutter.io/shared_preferences')
        .setMockMethodCallHandler((methodCall) async {
      if (methodCall.method == 'getAll') {
        return <String, dynamic>{}; // set initial values here if desired
      }
      return null;
    });
  });

  group('WearingTimer Unit Test - initialize', () {
    test('initial instance has startTime of now and duration 14', () {
      final startDate = DateTime.now();
      final duration = 14;
      final timer = WearingTimer(startDate: startDate, duration: duration);
      expect(timer.duration, equals(duration));
      expect(timer.startDate, equals(startDate));
      expect(timer.actualEndDate, isNull);
      expect(timer.endDate, isNull);
    });
  });

  group('WearingTimer Unit Test - startTimer', () {
    test('endDate is 14 days later than startDate', () {
      final startDate = DateTime.now();
      final duration = 14;
      final timer =
          WearingTimer(startDate: startDate, duration: duration).startTimer();
      final expectedEndDate = startDate.add(Duration(days: duration));

      expect(timer.duration, equals(duration));
      expect(timer.startDate, equals(startDate));
      expect(timer.actualEndDate, isNull);

      expect(timer.endDate?.year, equals(expectedEndDate.year));
      expect(timer.endDate?.month, equals(expectedEndDate.month));
      expect(timer.endDate?.day, equals(expectedEndDate.day));
    });

    test('endDate is 30 days later than startDate', () {
      final startDate = DateTime.now();
      final duration = 30;
      final timer =
          WearingTimer(startDate: startDate, duration: duration).startTimer();
      final expectedEndDate = startDate.add(Duration(days: duration));

      expect(timer.duration, equals(duration));
      expect(timer.startDate, equals(startDate));
      expect(timer.actualEndDate, isNull);

      expect(timer.endDate?.year, equals(expectedEndDate.year));
      expect(timer.endDate?.month, equals(expectedEndDate.month));
      expect(timer.endDate?.day, equals(expectedEndDate.day));
    });
  });

  group('WearingTimer Unit Test - endTimer', () {
    test('endDate is 14 days later than startDate', () {
      final startDate = DateTime(2021, 04, 17);
      final duration = 14;
      final startTimer =
          WearingTimer(startDate: startDate, duration: duration).startTimer();
      final timer = startTimer.endTimer();
      final expectedActualEndDate = DateTime.now();

      expect(timer.duration, equals(duration));
      expect(timer.startDate, equals(startDate));
      expect(timer.endDate, equals(startTimer.endDate));

      expect(timer.actualEndDate?.year, equals(expectedActualEndDate.year));
      expect(timer.actualEndDate?.month, equals(expectedActualEndDate.month));
      expect(timer.actualEndDate?.day, equals(expectedActualEndDate.day));
    });

    test('endDate is 30 days later than startDate', () {
      final startDate = DateTime(2021, 04, 17);
      final duration = 30;
      final startTimer =
          WearingTimer(startDate: startDate, duration: duration).startTimer();
      final timer = startTimer.endTimer();
      final expectedActualEndDate = DateTime.now();

      expect(timer.duration, equals(duration));
      expect(timer.startDate, equals(startDate));
      expect(timer.endDate, equals(startTimer.endDate));

      expect(timer.actualEndDate?.year, equals(expectedActualEndDate.year));
      expect(timer.actualEndDate?.month, equals(expectedActualEndDate.month));
      expect(timer.actualEndDate?.day, equals(expectedActualEndDate.day));
    });

    test('Throws an error if the timer does not start', () {
      final startDate = DateTime(2021, 04, 17);
      final duration = 30;
      final startTimer = WearingTimer(startDate: startDate, duration: duration);

      expect(startTimer.endTimer, throwsA(((e) => e is Exception)));
    });
  });
}
