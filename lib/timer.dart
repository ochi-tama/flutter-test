import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  static String id = "timer_page";
  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text('Timer Page'),
    ));
  }
}
