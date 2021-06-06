import 'find/find_input_port.dart';
import 'register/register_input_data.dart';
import 'register/register_input_port.dart';

/// No Doc
class WearingTimerController {
  /// No Doc
  WearingTimerController(
      {FindInputPort? findInputPort, RegisterInputPort? registerInputPort})
      : _findInputPort = findInputPort,
        _registerInputPort = registerInputPort;

  final FindInputPort? _findInputPort;
  final RegisterInputPort? _registerInputPort;

  /// No Doc
  Future<void> findWearingTimer() async {
    await _findInputPort?.handle();
  }

  /// No Doc
  Future<void> registerWearingTimer(RegisterInputData registerInputData) async {
    await _registerInputPort?.handle(registerInputData);
  }
}
