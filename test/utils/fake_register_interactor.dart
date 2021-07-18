import 'package:test_app/application/wearing_timer/register/register_input_data.dart';
import 'package:test_app/application/wearing_timer/register/register_input_port.dart';
import 'package:test_app/application/wearing_timer/register/register_output_data.dart';
import 'package:test_app/application/wearing_timer/register/register_output_port.dart';
import 'package:test_app/domain/models/wearing_timer/wearing_timer.dart';

class FakeRegisterInteractor extends RegisterInputPort {
  FakeRegisterInteractor({required RegisterOutputPort registerOutputPort})
      : _registerOutputPort = registerOutputPort;
  final RegisterOutputPort _registerOutputPort;

  Future<void> handle(RegisterInputData registerInputData) async {
    final wearingTimer = WearingTimer(
        startDate: registerInputData.startDate,
        duration: registerInputData.duration);

    final outputData =
        RegisterOutputData.fromWearingTimer(wearingTimer.startTimer());

    _registerOutputPort.output(outputData);
  }
}
