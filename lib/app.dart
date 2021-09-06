import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'indexed_stackbar.dart';
import 'provider.dart';
import 'ui/history.dart';
import 'ui/home.dart';
import 'ui/timer/timer.dart';

/// アプリ本体
class MyApp extends HookConsumerWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localNotificationPlugin = ref.read(localNotificationProvider);
    useEffect(() {
      Future.microtask(() async {
        await localNotificationPlugin.initializeSettings(context, ref);
      });
    }, const []);

    return MaterialApp(
      initialRoute: IndexedStackBar.id,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('jp', ''), // English, no country code
        const Locale('en', ''), // Spanish, no country code
      ],
      // LoginScreen.id,
      routes: {
        // 情報サイト側
        TimerPage.id: (context) => TimerPage(),
        HistoryPage.id: (context) => HistoryPage(),
        HomePage.id: (context) => HomePage(),
        // Menu画面

        IndexedStackBar.id: (context) => IndexedStackBar(),
      },
    );
  }
}
