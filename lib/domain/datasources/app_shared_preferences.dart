import 'package:shared_preferences/shared_preferences.dart';

/// NoDoc
class AppSharedPreferences {
  SharedPreferences? _prefs;

  /// get shared_preferences instance
  Future<SharedPreferences> getInstance() async {
    return _prefs ??= await SharedPreferences.getInstance();
  }

  /// get object
  Future<Object?> get(String key) async {
    return (await getInstance()).get(key);
  }

  /// get object
  Future<bool> set(String key, String data) async {
    return await (await getInstance()).setString(key, data);
  }

  /// remove object
  Future<bool> remove(String key) async {
    return await (await getInstance()).remove(key);
  }
}
