import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/application/wearing_timer/find/find_interactor.dart';
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

  test('find interactor returns an active WearingTimer ', () async {
    dataSource = AppSharedPreferences();
    repository = WearingTimerRepositoryImpl(dataSource: dataSource);
    await repository.save(testTimer);

    /// TODO: presentor(Model View) にする
    final registerInteractor = FindInteractor(wbRepository: repository);
    final result = await registerInteractor.handle();

    expect(result, equals(testTimer));
  });
}
