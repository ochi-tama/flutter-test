import '../../../domain/models/wearing_timer/wearing_timer.dart';
import '../../../domain/models/wearing_timer/wearing_timer_repository.dart';
import '../find/data/find_output_data.dart';
import '../find/find_output_port.dart';
import 'register_input_data.dart';
import 'register_input_port.dart';

/// No Doc
class RegisterInteractor extends RegisterInputPort {
  /// No Doc
  RegisterInteractor(
      {required WearingTimerRepository repository,
      required FindOutputPort registerOutputPort})
      : _wearingTimerRepository = repository,
        _registerOutputPort = registerOutputPort;

  final WearingTimerRepository _wearingTimerRepository;
  final FindOutputPort _registerOutputPort;

  Future<void> handle(RegisterInputData registerInputData) async {
    final wearingTimer = WearingTimer(
        startDate: registerInputData.startDate,
        duration: registerInputData.duration);
    final startedWearingTimer = wearingTimer.startTimer();
    await _wearingTimerRepository.save(startedWearingTimer);

    final outputData = FindOutputData.fromWearingTimer(startedWearingTimer);
    _registerOutputPort.output(outputData);
  }
}
