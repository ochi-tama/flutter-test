import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'data/complete_output_data.dart';
import 'data/complete_presenter_data.dart';
import 'interfaces/complete_output_port.dart';

/// No Doc
class CompletePresenter extends StateNotifier<CompletePresenterData>
    implements CompleteOutputPort {
  /// No Doc
  CompletePresenter(
      {CompletePresenterData data = const CompletePresenterData()})
      : super(data);

  @override
  void output(CompleteOutputData outputData) {
    state = CompletePresenterData.fromCompleteOutputData(outputData);
  }
}
