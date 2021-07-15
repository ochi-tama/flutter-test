import 'dart:convert';

import '../../domain/datasources/app_shared_preferences.dart';
import '../../domain/models/wearing_timer/wearing_timer.dart';
import '../../domain/models/wearing_timer/wearing_timer_repository.dart';

/// NoDoc
class WearingTimerRepositoryImpl implements WearingTimerRepository {
  /// Constructor
  WearingTimerRepositoryImpl({required AppSharedPreferences dataSource})
      : _dataSource = dataSource;

  final AppSharedPreferences _dataSource;

  @override
  Future<WearingTimer?> find() async {
    final data = (await _dataSource.get("wearingTimer")) as String?;
    if (data != null) {
      return WearingTimer.fromJson(json.decode(data));
    }
    return null;
  }

  @override
  Future<bool> save(WearingTimer wb) async {
    final data = json.encode(wb.toJson());
    return (await _dataSource.set("wearingTimer", data));
  }

  @override
  Future<bool> delete() async {
    // confirm repository has data;
    try {
      final existingKey = (await _dataSource.getInstance()).getKeys();
      if (existingKey.isNotEmpty) {
        return (await _dataSource.remove("wearingTimer"));
      }
      return true;
    } on Exception catch (e) {
      print(e);
      return false;
    }
  }
}
