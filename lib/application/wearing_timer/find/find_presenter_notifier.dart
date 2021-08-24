import 'package:hooks_riverpod/hooks_riverpod.dart';

import './data/find_output_data.dart';
import './data/find_presenter_data.dart';
import 'find_output_port.dart';

/// No Doc
class FindPresenterNotifier extends StateNotifier<FindPresenterData>
    implements FindOutputPort {
  /// No Doc
  FindPresenterNotifier({FindPresenterData data = const FindPresenterData()})
      : super(data);

  /// No Doc
  void output(FindOutputData findOutputData) {
    state = FindPresenterData.fromFindOutputData(findOutputData);
  }
}
