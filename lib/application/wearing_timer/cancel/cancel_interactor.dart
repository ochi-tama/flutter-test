import '../../../domain/models/wearing_timer/wearing_timer_repository.dart';
import '../find/data/find_output_data.dart';
import '../find/find_output_port.dart';
import 'interface/cancel_input_port.dart';

/// No Doc
class CancelInteractor extends CancelInputPort {
  /// No Doc
  CancelInteractor(
      {required WearingTimerRepository repository,
      required FindOutputPort findOutputPort})
      : _wearingTimerRepository = repository,
        _findOutputPort = findOutputPort;

  final WearingTimerRepository _wearingTimerRepository;
  final FindOutputPort _findOutputPort;

  Future<void> handle() async {
    late final FindOutputData outputData;
    final isDeleteSuccess = await _wearingTimerRepository.delete();

    if (isDeleteSuccess) {
      outputData = FindOutputData();
    } else {
      /// TODO: エラーメッセージの埋め込みを考える
      outputData = FindOutputData(errorMessages: "削除に失敗しました。");
    }
    _findOutputPort.output(outputData);
  }
}
