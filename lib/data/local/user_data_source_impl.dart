import './user_data_source.dart';
import 'app_shared_preferences.dart';

/// NoDoc
class UserData extends UserDataSource {
  /// Constructor requires data source
  UserData(this._prefs);

  /// key of shared_preferences data
  static const String startDate = "startDate";

  final AppSharedPreferences _prefs;

  @override
  Future<bool> setStartTime(DateTime start) async {
    final prefs = await _prefs.getInstance();
    prefs.setString(startDate, start.toString());
    return true;
  }

  @override
  Future<DateTime?> getStartTime() async {
    final prefs = await _prefs.getInstance();
    var start = (prefs.getString(startDate) ?? null);
    return start != null ? DateTime.parse(start) : null;
  }

  /// Delete all local data
  Future<void> deleteStorage() async {
    final storage = await _prefs.getInstance();
    final deleteTask = <Future<bool>>[];
    final existsKey = storage.getKeys();
    if (existsKey.isNotEmpty) {
      // SharedStorageに値がない場合にkeyでremoveするとエラーになる
      for (var key in existsKey) {
        deleteTask.add(storage.remove(key));
      }
      await Future.wait(deleteTask);
    }
  }
}
