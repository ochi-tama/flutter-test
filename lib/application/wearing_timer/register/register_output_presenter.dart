import 'register_output_data.dart';
import 'register_output_port.dart';

/// No Doc
class RegisterOutputPresenter extends RegisterOutputPort {
  /// No Doc
  RegisterOutputPresenter({this.startDate, this.endDate, this.duration});

  /// No Doc
  factory RegisterOutputPresenter.initialize() {
    return RegisterOutputPresenter(
        startDate: null, endDate: null, duration: null);
  }

  /// No Doc
  DateTime? startDate;

  /// No Doc
  DateTime? endDate;

  /// No Doc
  int? duration;

  void output(RegisterOutputData outputData) {
    startDate = outputData.startDate;
    endDate = outputData.endDate;
    duration = outputData.duration;
  }
}
