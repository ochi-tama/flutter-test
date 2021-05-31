import '../../../domain/models/wearing_timer/wearing_timer.dart';
import '../../../domain/models/wearing_timer/wearing_timer_repository.dart';
import 'register_input_data.dart';
import 'register_input_port.dart';
import 'register_output_data.dart';
import 'register_output_port.dart';

/// No Doc
class RegisterInteractor extends RegisterInputPort {
  /// No Doc
  RegisterInteractor(
      {required WearingTimerRepository wbRepository,
      required RegisterOutputPort registerOutputPort})
      : _wearingTimerRepository = wbRepository,
        _registerOutputPort = registerOutputPort;

  final WearingTimerRepository _wearingTimerRepository;
  final RegisterOutputPort _registerOutputPort;

  Future<void> handle(RegisterInputData registerInputData) async {
    final wearingTimer = WearingTimer(
        startDate: registerInputData.startDate,
        duration: registerInputData.duration);
    final startedWearingTimer = wearingTimer.startTimer();
    await _wearingTimerRepository.save(startedWearingTimer);

    final outputData = RegisterOutputData.fromWearingTimer(startedWearingTimer);
    _registerOutputPort.output(outputData);
    //return await _wearingTimerRepository.save(wearingTimer);
  }
}
