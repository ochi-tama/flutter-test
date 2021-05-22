import '../../../domain/models/wearing_timer/wearing_timer.dart';
import '../../../domain/models/wearing_timer/wearing_timer_repository.dart';
import 'find_input_port.dart';

/// NoDoc
class FindInteractor extends FindInputPort {
  /// NoDoc
  FindInteractor({required WearingTimerRepository wbRepository})
      : _wearingTimerRepository = wbRepository;

  final WearingTimerRepository _wearingTimerRepository;

  Future<WearingTimer?> handle() async {
    return await _wearingTimerRepository.find();
  }
}
