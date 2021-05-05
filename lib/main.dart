import 'package:flutter/material.dart';
import 'package:test_app/history.dart';
import 'package:test_app/timer.dart';
import 'package:test_app/home.dart';
import 'indexed_stackbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: IndexedStackBar.id,
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
