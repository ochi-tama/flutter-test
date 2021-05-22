import '../../domain/models/wearing_timer/wearing_timer.dart';
import 'find/find_input_port.dart';
import 'register/register_input_data.dart';
import 'register/register_input_port.dart';

/// No Doc
class WearingTimerApplicationService {
  /// No Doc
  WearingTimerApplicationService(
      {FindInputPort? findInteractor, RegisterInputPort? registerInteractor});

  late final FindInputPort _findInteractor;
  late final RegisterInputPort _registerInteractor;

  /// No Doc
  Future<WearingTimer?> findWearingTimer() async {
    return await _findInteractor.handle();
  }

  /// No Doc
  Future<bool> registerWearingTimer(RegisterInputData registerInputData) async {
    return await _registerInteractor.handle(registerInputData);
  }
}
