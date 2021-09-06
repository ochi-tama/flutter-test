import 'cancel/interface/cancel_input_port.dart';
import 'complete/interfaces/complete_input_port.dart';
import 'find/find_input_port.dart';
import 'register/register_input_data.dart';
import 'register/register_input_port.dart';

/// No Doc
class WearingTimerController {
  /// No Doc
  WearingTimerController(
      {FindInputPort? findInputPort,
      RegisterInputPort? registerInputPort,
      CancelInputPort? cancelInputPort,
      CompleteInputPort? completeInputPort})
      : _findInputPort = findInputPort,
        _registerInputPort = registerInputPort,
        _cancelInputPort = cancelInputPort,
        _completeInputPort = completeInputPort;

  final FindInputPort? _findInputPort;
  final RegisterInputPort? _registerInputPort;
  final CancelInputPort? _cancelInputPort;
  final CompleteInputPort? _completeInputPort;

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

  /// No Doc
  Future<void> completeWearingTimer() async {
    await _completeInputPort?.handle();
  }
}
