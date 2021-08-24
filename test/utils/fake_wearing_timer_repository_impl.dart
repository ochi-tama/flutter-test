import 'package:test_app/domain/models/wearing_timer/wearing_timer.dart';
import 'package:test_app/domain/models/wearing_timer/wearing_timer_repository.dart';

class FakeWearingTimerRepositoryImpl extends WearingTimerRepository {
  WearingTimer? _wearingTimer;

  FakeWearingTimerRepositoryImpl({WearingTimer? wearingTimer}) {
    _wearingTimer = wearingTimer;
  }

  Future<WearingTimer?> find() async {
    return _wearingTimer;
  }

  Future<bool> save(WearingTimer wearingTimer) async {
    _wearingTimer = wearingTimer;
    return true;
  }

  Future<bool> delete() async {
    _wearingTimer = null;
    return true;
  }
}
