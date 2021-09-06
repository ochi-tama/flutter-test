import '../../../domain/models/wearing_timer/wearing_timer_repository.dart';
import 'data/complete_output_data.dart';
import 'interfaces/complete_input_port.dart';
import 'interfaces/complete_output_port.dart';

/// No Doc
class CompleteInteractor implements CompleteInputPort {
  /// No Doc
  CompleteInteractor(
      {required WearingTimerRepository repository,
      required CompleteOutputPort outputPort})
      : _repository = repository,
        _outputPort = outputPort;

  final WearingTimerRepository _repository;
  final CompleteOutputPort _outputPort;

  @override
  Future<void> handle() async {
    final timer = await _repository.find();
    // TODO: エラーを返す
    if (timer == null) return;
    final completedTimer = timer.endTimer();
    await _repository.save(completedTimer);

    final outputData = CompleteOutputData.fromWearingTimer(completedTimer);
    _outputPort.output(outputData);
  }
}
