import 'data/find_output_data.dart';
import 'find_output_port.dart';
import 'find_presenter_notifier.dart';

/// No Doc
class FindPresenter implements FindOutputPort {
  /// No Doc
  FindPresenter(FindPresenterNotifier notifier) : _notifier = notifier;

  final FindPresenterNotifier _notifier;

  void output(FindOutputData outputData) {
    /// TODO: ここで更新しない場合を決める？
    _notifier.update(outputData);
  }
}
