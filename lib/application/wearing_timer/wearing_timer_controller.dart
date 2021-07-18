import 'cancel/interface/cancel_input_port.dart';
import 'find/find_input_port.dart';
import 'register/register_input_data.dart';
import 'register/register_input_port.dart';

/// No Doc
class WearingTimerController {
  /// No Doc
  WearingTimerController(
      {FindInputPort? findInputPort,
      RegisterInputPort? registerInputPort,
      CancelInputPort? cancelInputPort})
      : _findInputPort = findInputPort,
        _registerInputPort = registerInputPort,
        _cancelInputPort = cancelInputPort;

  final FindInputPort? _findInputPort;
  final RegisterInputPort? _registerInputPort;
  final CancelInputPort? _cancelInputPort;

  /// No Doc
  Future<void> findWearingTimer() async {
    await _findInputPort?.handle();
  }

  /// No Doc
  Future<void> registerWearingTimer(RegisterInputData registerInputData) async {
    await _registerInputPort?.handle(registerInputData);
  }

  /// No Doc
  Future<void> cancelWearingTimer() async {
    await _cancelInputPort?.handle();
  }
}
