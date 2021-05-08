import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/data/local/user_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> cleanupSharedPreferences() async {
  final pref = await SharedPreferences.getInstance();
  if (pref.getKeys().isNotEmpty) {
    await pref.remove(UserData.startDate);
  }
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
      final startDate = await UserData().getStartTime();
      expect(startDate, isNull);
    });

    test('現在時刻を追加したら現在時刻が返ってくる', () async {
      final now = DateTime.now();
      await UserData().setStartTime(now);
      final startDate = await UserData().getStartTime();
      expect(startDate, equals(now));
    });
  });

  group('Storage setStartTimeのテスト', () {
    tearDown(() async {
      await cleanupSharedPreferences();
    });

    test('現在時刻を追加したらStoreに登録される', () async {
      final now = DateTime.now();
      await UserData().setStartTime(now);
      expect(await UserData().getStartTime(), equals(now));
    });
  });

  group('Storage deleteStorageのテスト', () {
    test('データが空でも初期化できる', () async {
      await UserData().deleteStorage();
      final startDate = await UserData().getStartTime();
      expect(startDate, isNull);
    });

    test('入力されていたデータは初期化される', () async {
      final now = DateTime.now();
      await UserData().setStartTime(now);
      await UserData().deleteStorage();
      final startDate = await UserData().getStartTime();
      expect(startDate, isNull);
    });
  });
}
