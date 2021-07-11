import 'data/find_output_data.dart';
import 'find_output_port.dart';
import 'find_presenter_notifier.dart';

/// No Doc
class FindPresenter extends FindOutputPort {
  /// No Doc
  FindPresenter(FindPresenterNotifier notifier) : _notifier = notifier;

  final FindPresenterNotifier _notifier;

  void output(FindOutputData outputData) {
    /// TODO: バリデーション用の関数を作る
    if (outputData.duration == null || outputData.startDate == null) {
      return;
    }
    _notifier.update(outputData);
  }
}
