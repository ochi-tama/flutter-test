import 'package:test_app/application/wearing_timer/register/register_input_data.dart';

import '../../domain/models/wearing_timer/wearing_timer.dart';
import 'find/find_interactor.dart';
import 'register/register_interactor.dart';

/// No Doc
class WearingTimerApplicationService {
  /// No Doc
  WearingTimerApplicationService(
      {FindInteractor? findInteractor, RegisterInteractor? registerInteractor});

  late final FindInteractor _findInteractor;
  late final RegisterInteractor _registerInteractor;

  /// No Doc
  Future<WearingTimer?> findWearingTimer() async {
    return await _findInteractor.handle();
  }

  /// No Doc
  Future<bool> registerWearingTimer(RegisterInputData registerInputData) async {
    return await _registerInteractor.handle(registerInputData);
  }
}
