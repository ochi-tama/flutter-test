import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/application/wearing_timer/register/register_input_data.dart';
import 'package:test_app/application/wearing_timer/register/register_interactor.dart';
import 'package:test_app/domain/datasources/app_shared_preferences.dart';
import 'package:test_app/domain/models/wearing_timer/wearing_timer.dart';
import 'package:test_app/infrastructure/local/wearing_timer_repository_impl.dart';

void main() {
  final testTimer =
      WearingTimer(startDate: DateTime(2021, 4, 17), duration: 14);
  TestWidgetsFlutterBinding.ensureInitialized();
  late final AppSharedPreferences dataSource;
  late final WearingTimerRepositoryImpl repository;
  setUpAll(() {
    const MethodChannel('plugins.flutter.io/shared_preferences')
        .setMockMethodCallHandler((methodCall) async {
      if (methodCall.method == 'getAll') {
        return <String, dynamic>{}; // set initial values here if desired
      }
      return null;
    });
  });

  tearDown(() async {
    await repository.delete();
  });

  test('register interactor saves a WearingTimer to repository', () async {
    dataSource = AppSharedPreferences();
    repository = WearingTimerRepositoryImpl(dataSource: dataSource);
    final inputData = RegisterInputData(data: testTimer);
    final registerInteractor = RegisterInteractor(wbRepository: repository);
    final result = await registerInteractor.handle(inputData);

    /// TODO: テストの内容を再考
    expect(result, true);
  });
}
