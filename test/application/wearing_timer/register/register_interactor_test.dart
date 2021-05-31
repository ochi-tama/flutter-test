import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/application/wearing_timer/register/register_input_data.dart';
import 'package:test_app/application/wearing_timer/register/register_interactor.dart';
import 'package:test_app/application/wearing_timer/register/register_output_data.dart';
import 'package:test_app/application/wearing_timer/register/register_output_presenter.dart';
import 'package:test_app/domain/models/wearing_timer/wearing_timer_repository.dart';

import '../../../utils/fake_wearing_timer_repository_impl.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late WearingTimerRepository repository;
  late RegisterOutputPresenter outputPort;
  late RegisterInteractor registerInteractor;
  setUpAll(() {
    repository = FakeWearingTimerRepositoryImpl();
    outputPort = RegisterOutputPresenter.initialize();
    registerInteractor = RegisterInteractor(
        wbRepository: repository, registerOutputPort: outputPort);
  });

  tearDown(() async {
    await repository.delete();
    final initOutputData = RegisterOutputData();
    outputPort.output(initOutputData);
  });

  test('register interactor saves a WearingTimer to repository', () async {
    final startDate = DateTime(2010, 7, 17);
    final duration = 30;
    final registerInputData = RegisterInputData(startDate, duration);
    await registerInteractor.handle(registerInputData);

    final expectedDuration = 30;
    final expectedStartDate = DateTime(2010, 7, 17);
    final expectedEndDate = startDate.add(Duration(days: duration));

    expect(outputPort.duration, equals(expectedDuration));
    expect(outputPort.startDate, equals(expectedStartDate));
    expect(outputPort.endDate, equals(expectedEndDate));
  });
}
