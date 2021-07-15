import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'indexed_stackbar.dart';
import 'ui/history.dart';
import 'ui/home.dart';
import 'ui/timer/timer.dart';

/// アプリ本体
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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