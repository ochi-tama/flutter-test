import 'package:shared_preferences/shared_preferences.dart';

class UserStorage {
  static const String START_DATE = "startDate";

  Future<SharedPreferences> _userStorage() async {
    return await SharedPreferences.getInstance();
  }

  Future<void> setStartTime(DateTime startDate) async {
    SharedPreferences storage = await _userStorage();
    storage.setString(START_DATE, startDate.toString());
  }

  Future<DateTime?> getStartTime() async {
    SharedPreferences storage = await _userStorage();
    String? startDate = (storage.getString(START_DATE) ?? null);
    return startDate != null ? DateTime.parse(startDate) : null;
  }

  Future<void> deleteStorage() async {
    final List<Future<bool>> deleteTask = [];
    SharedPreferences storage = await _userStorage();
    final existsKey = storage.getKeys();
    if (existsKey.isNotEmpty) {
      // SharedStorageに値がない場合にkeyでremoveするとエラーになる
      existsKey.forEach((key) => deleteTask.add(storage.remove(key)));
      await Future.wait(deleteTask);
    }
  }
}
