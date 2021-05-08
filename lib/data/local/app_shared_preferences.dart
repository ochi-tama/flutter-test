import 'package:shared_preferences/shared_preferences.dart';

/// NoDoc
class AppSharedPreferences {
  SharedPreferences? _prefs;

  /// get shared_preferences instance
  Future<SharedPreferences> getInstance() async {
    return _prefs ??= await SharedPreferences.getInstance();
  }
}
