import 'package:test_app/application/wearing_timer/register/register_input_data.dart';
import 'package:test_app/domain/models/wearing_timer/wearing_timer.dart';

final _startDate = DateTime(2021, 11, 27);
final _endDate = DateTime(2021, 11, 30);
final _duration = 3;

final registerInputData = RegisterInputData(_startDate, _duration);

final fakeActiveWearingTimer =
    WearingTimer(startDate: _startDate, duration: _duration);

final fakeStartedWearingTimer =
    WearingTimer(startDate: _startDate, endDate: _endDate, duration: _duration);
