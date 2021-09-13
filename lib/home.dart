import 'package:flutter/material.dart';

import 'ui/timer/timer.dart';

/// Indexed Stack
class Home extends StatelessWidget {
  /// Indexed Stack用のID
  static String id = 'timer_home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("コンタクトアラート"),
        actions: [],
      ),
      body: TimerPage(),
    );
  }
}
