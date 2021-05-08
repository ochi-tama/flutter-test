import 'package:shared_preferences/shared_preferences.dart';

/// User Preferences
class UserStorage {
  /// key of shared_preferences data
  static const String startDate = "startDate";

  Future<SharedPreferences> _userStorage() async {
    return await SharedPreferences.getInstance();
  }

  /// Set now dateTime to shared_preferences
  Future<void> setStartTime(DateTime start) async {
    var storage = await _userStorage();
    storage.setString(startDate, startDate.toString());
  }

  /// Get dateTime from shared_preferences
  Future<DateTime?> getStartTime() async {
    var storage = await _userStorage();
    var start = (storage.getString(startDate) ?? null);
    return start != null ? DateTime.parse(start) : null;
  }

  /// Delete all local data
  Future<void> deleteStorage() async {
    final deleteTask = <Future<bool>>[];
    var storage = await _userStorage();
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
