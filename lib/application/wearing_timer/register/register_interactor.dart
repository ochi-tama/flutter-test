import '../../../domain/models/wearing_timer/wearing_timer_repository.dart';
import 'register_input_data.dart';
import 'register_input_port.dart';

/// No Doc
class RegisterInteractor extends RegisterInputPort {
  /// No Doc
  RegisterInteractor({required WearingTimerRepository wbRepository})
      : _wearingTimerRepository = wbRepository;

  final WearingTimerRepository _wearingTimerRepository;

  Future<bool> handle(RegisterInputData registerInputData) async {
    final wearingTimer = registerInputData.wearingTimer;
    return await _wearingTimerRepository.save(wearingTimer);
  }
}
