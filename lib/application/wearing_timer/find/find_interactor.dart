import '../../../domain/models/wearing_timer/wearing_timer_repository.dart';
import 'data/find_output_data.dart';
import 'find_input_port.dart';
import 'find_output_port.dart';

/// NoDoc
class FindInteractor implements FindInputPort {
  /// NoDoc
  FindInteractor(
      {required WearingTimerRepository wbRepository,
      required FindOutputPort findOutputPort})
      : _wearingTimerRepository = wbRepository,
        _findOutputPort = findOutputPort;

  final WearingTimerRepository _wearingTimerRepository;
  final FindOutputPort _findOutputPort;

  Future<void> handle() async {
    final registerdWearingTimer = await _wearingTimerRepository.find();
    final outputData = FindOutputData.fromWearingTimer(registerdWearingTimer);
    _findOutputPort.output(outputData);
  }
}
