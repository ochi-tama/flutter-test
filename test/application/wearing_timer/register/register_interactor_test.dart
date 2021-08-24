import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/application/wearing_timer/find/data/find_presenter_data.dart';
import 'package:test_app/application/wearing_timer/register/register_input_data.dart';
import 'package:test_app/application/wearing_timer/register/register_interactor.dart';
import 'package:test_app/domain/models/wearing_timer/wearing_timer.dart';
import 'package:test_app/provider.dart';

import '../../../utils/data/fake_wearing_timer.dart';
import '../../../utils/fake_wearing_timer_repository_impl.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late ProviderContainer container;
  late RegisterInteractor registerInteractor;
  setUp(() {
    container = ProviderContainer(
      overrides: [
        wearingTimerRepositoryProvider.overrideWithProvider(
            Provider((ref) => FakeWearingTimerRepositoryImpl()))
      ],
    );
    final repository = container.read(wearingTimerRepositoryProvider);
    final outputPort = container.read(findPresenterNotifierProvider.notifier);
    registerInteractor = RegisterInteractor(
        repository: repository, registerOutputPort: outputPort);
  });

  test('register interactor saves a WearingTimer to repository', () async {
    final startDate = DateTime(2010, 7, 17);
    final duration = 30;
    final endDate = startDate.add(Duration(days: duration));
    final registerInputData = RegisterInputData(startDate, duration);

    expect(container.read(findPresenterNotifierProvider),
        equals(FindPresenterData()));

    await registerInteractor.handle(registerInputData);

    final registerdData =
        await container.read(wearingTimerRepositoryProvider).find();
    final expectedRegisteredData = WearingTimer(
        startDate: startDate, duration: duration, endDate: endDate);

    expect(registerdData, equals(expectedRegisteredData));

    final expectedResult =
        FindPresenterData(startDate: startDate, endDate: endDate, duration: 30);
    final outputData = container.read(findPresenterNotifierProvider);

    expect(outputData, equals(expectedResult));
  });
}
