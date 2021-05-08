import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/data/local/app_shared_preferences.dart';
import 'package:test_app/data/local/user_data_source_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> cleanupSharedPreferences() async {
  final pref = await SharedPreferences.getInstance();
  if (pref.getKeys().isNotEmpty) {
    await pref.remove(UserData.startDate);
  }
}

UserData userData() {
  return UserData(AppSharedPreferences());
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() {
    const MethodChannel('plugins.flutter.io/shared_preferences')
        .setMockMethodCallHandler((methodCall) async {
      if (methodCall.method == 'getAll') {
        return <String, dynamic>{}; // set initial values here if desired
      }
      return null;
    });
  });

  group('Storage getStartTimeのテスト', () {
    tearDown(() async {
      await cleanupSharedPreferences();
    });

    test('未登録時にはnullが返ってくる', () async {
      final startDate = await userData().getStartTime();
      expect(startDate, isNull);
    });

    test('現在時刻を追加したら現在時刻が返ってくる', () async {
      final now = DateTime.now();
      await userData().setStartTime(now);
      final startDate = await userData().getStartTime();
      expect(startDate, equals(now));
    });
  });

  group('Storage setStartTimeのテスト', () {
    tearDown(() async {
      await cleanupSharedPreferences();
    });

    test('現在時刻を追加したらStoreに登録される', () async {
      final now = DateTime.now();
      await userData().setStartTime(now);
      expect(await userData().getStartTime(), equals(now));
    });
  });

  group('Storage deleteStorageのテスト', () {
    test('データが空でも初期化できる', () async {
      await userData().deleteStorage();
      final startDate = await userData().getStartTime();
      expect(startDate, isNull);
    });

    test('入力されていたデータは初期化される', () async {
      final now = DateTime.now();
      await userData().setStartTime(now);
      await userData().deleteStorage();
      final startDate = await userData().getStartTime();
      expect(startDate, isNull);
    });
  });
}
