import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/domain/datasources/app_shared_preferences.dart';
import 'package:test_app/domain/models/wearing_timer/wearing_timer.dart';
import 'package:test_app/infrastructure/local/wearing_timer_repository_impl.dart';

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
    late AppSharedPreferences appSharedPreferences;
    late WearingTimerRepositoryImpl wearingTimerRepository;
    setUp(() {
      appSharedPreferences = AppSharedPreferences();
      wearingTimerRepository =
          WearingTimerRepositoryImpl(dataSource: appSharedPreferences);
    });

    tearDown(() async {
      await wearingTimerRepository.delete();
    });

    test('An initial repository has no data', () async {
      final result = await wearingTimerRepository.find();
      expect(result, isNull);
    });

    test('repository has startTime of now and duration 14', () async {
      final testTimer =
          WearingTimer(startDate: DateTime(2021, 4, 17), duration: 14);
      final result = await wearingTimerRepository.save(testTimer);

      expect(result, equals(true));
      final data = await wearingTimerRepository.find();
      expect(data, equals(testTimer));
    });
  });
}
