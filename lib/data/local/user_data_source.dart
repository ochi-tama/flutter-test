/// User Preferences
abstract class UserDataSource {
  /// set StartTime of timer to dataSource
  Future<bool> setStartTime(DateTime start);

  /// get StartTime of timer from dataSource
  Future<DateTime?> getStartTime();
}

/*
/// User Preferences
class UserData {
  /// key of shared_preferences data
  static const String startDate = "startDate";

  Future<SharedPreferences> _userData() async {
    return await SharedPreferences.getInstance();
  }

  /// Set now dateTime to shared_preferences
  Future<void> setStartTime(DateTime start) async {
    var storage = await _userData();
    storage.setString(startDate, start.toString());
  }

  /// Get dateTime from shared_preferences
  Future<DateTime?> getStartTime() async {
    var storage = await _userData();
    var start = (storage.getString(startDate) ?? null);
    return start != null ? DateTime.parse(start) : null;
  }

  /// Delete all local data
  Future<void> deleteStorage() async {
    final deleteTask = <Future<bool>>[];
    var storage = await _userData();
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
*/
