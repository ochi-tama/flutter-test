import 'package:hooks_riverpod/hooks_riverpod.dart';

import './data/find_output_data.dart';
import './data/find_presenter_data.dart';

/// No Doc
class FindPresenterNotifier extends StateNotifier<FindPresenterData> {
  /// No Doc
  FindPresenterNotifier() : super(FindPresenterData());

  /// No Doc
  void update(FindOutputData findOutputData) {
    state = FindPresenterData.fromFindOutputData(findOutputData);
  }
}