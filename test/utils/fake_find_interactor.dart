import 'package:test_app/application/wearing_timer/find/find_input_port.dart';
import 'package:test_app/application/wearing_timer/find/data/find_output_data.dart';
import 'package:test_app/application/wearing_timer/find/find_output_port.dart';

import 'data/fake_wearing_timer.dart';

class FakeFindInteractor extends FindInputPort {
  FakeFindInteractor({required FindOutputPort findOutputPort})
      : _findOutputPort = findOutputPort;
  final FindOutputPort _findOutputPort;

  Future<void> handle() async {
    final outputData = FindOutputData.fromWearingTimer(fakeActiveWearingTimer);
    _findOutputPort.output(outputData);
  }
}
