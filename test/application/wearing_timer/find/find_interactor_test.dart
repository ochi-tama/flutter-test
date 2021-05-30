import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/application/wearing_timer/find/find_interactor.dart';
import 'package:test_app/application/wearing_timer/find/find_output_presenter.dart';
import 'package:test_app/domain/models/wearing_timer/wearing_timer.dart';
import 'package:test_app/domain/models/wearing_timer/wearing_timer_repository.dart';

import '../../../utils/fake_wearing_timer_repository_impl.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group("Find interactor test", () {
    late WearingTimer testTimer;
    late WearingTimerRepository repository;
    late FindOutputPresenter outputPort;
    late FindInteractor findInteractor;
    setUpAll(() {
      testTimer = WearingTimer(startDate: DateTime(2021, 4, 17), duration: 14);
      repository = FakeWearingTimerRepositoryImpl();
      outputPort = FindOutputPresenter.initialize();
      findInteractor =
          FindInteractor(wbRepository: repository, findOutputPort: outputPort);
    });

    tearDown(() async {
      await repository.delete();
    });
    test('find method return a weaing timer object from repository', () async {
      await repository.save(testTimer);
      await findInteractor.handle();
      final expectedStartDate = DateTime(2021, 4, 17);
      final expectedDuration = 14;
      expect(outputPort.duration, equals(expectedDuration));
      expect(outputPort.endDate, isNull);
      expect(outputPort.startDate, equals(expectedStartDate));
    });
    test('find method return null object if no data stored', () async {
      await findInteractor.handle();
      expect(outputPort.duration, isNull);
      expect(outputPort.endDate, isNull);
      expect(outputPort.startDate, isNull);
    });
  });
}
