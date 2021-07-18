import 'package:test_app/application/wearing_timer/find/data/find_output_data.dart';
import 'package:test_app/application/wearing_timer/find/data/find_presenter_data.dart';
import 'package:test_app/application/wearing_timer/register/register_input_data.dart';
import 'package:test_app/domain/models/wearing_timer/wearing_timer.dart';

final startDate = DateTime(2021, 11, 27);
final endDate = DateTime(2021, 11, 30);
final duration = 3;

final registerInputData = RegisterInputData(startDate, duration);

final fakeActiveWearingTimer =
    WearingTimer(startDate: startDate, duration: duration);

final fakeStartedWearingTimer =
    WearingTimer(startDate: startDate, endDate: endDate, duration: duration);

class TestWearingTimerData {
  static final startDate = DateTime(2021, 4, 5);
  static final duration = 4;
  static final endDate = startDate.add(Duration(days: duration));

  static RegisterInputData registerInputData() {
    return RegisterInputData(startDate, duration);
  }

  static WearingTimer wearingTimerNotStarted() {
    return WearingTimer(startDate: startDate, duration: duration);
  }

  static WearingTimer wearingTimerStarted() {
    return WearingTimer(
        startDate: startDate, endDate: endDate, duration: duration);
  }

  static FindOutputData initialFindOutputData() {
    return FindOutputData();
  }

  static FindOutputData findOutputDataFilledWithAllParameters() {
    return FindOutputData(
        startDate: startDate, endDate: endDate, duration: duration);
  }

  static FindOutputData findOutputDataOnlyFillsEndDate() {
    return FindOutputData(duration: duration);
  }

  static FindPresenterData initialFindPresenterData() {
    return FindPresenterData();
  }

  static FindPresenterData findPresenterDataFilledWithAllParameters() {
    return FindPresenterData(
        startDate: startDate, endDate: endDate, duration: duration);
  }

  static FindPresenterData findPresenterDataTimerNotStarted() {
    return FindPresenterData(startDate: startDate, duration: duration);
  }

  static FindPresenterData findPresenterDataOnlyFillsEndDate() {
    return FindPresenterData(duration: duration);
  }
}
