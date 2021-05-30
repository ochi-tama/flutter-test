import 'find_output_data.dart';
import 'find_output_port.dart';

/// No Doc
class FindOutputPresenter extends FindOutputPort {
  /// No Doc
  FindOutputPresenter({this.startDate, this.endDate, this.duration});

  /// No Doc
  factory FindOutputPresenter.initialize() {
    return FindOutputPresenter(startDate: null, endDate: null, duration: null);
  }

  /// No Doc
  DateTime? startDate;

  /// No Doc
  DateTime? endDate;

  /// No Doc
  int? duration;

  void output(FindOutputData outputData) {
    startDate = outputData.startDate;
    endDate = outputData.endDate;
    duration = outputData.duration;
  }
}
