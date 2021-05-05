import 'package:flutter/material.dart';
import 'dart:async';

import 'package:intl/intl.dart';

class TimerPage extends StatefulWidget {
  static int timeLimit = 0;
  static String id = "timer_page";
  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  late Timer _timer;
  DateTime _time = DateTime.utc(0, 0, 0);
  bool _fired = false;

  @override
  void initState() {
    _time = DateTime.utc(0, 0, 0);
    super.initState();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        _time = _time.add(Duration(seconds: 1));
      });
    });
    setState(() {
      _fired = true;
    });
  }

  void stopTimer() {
    setState(() {
      _fired = false;
    });
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          DateFormat.Hms().format(_time),
          style: Theme.of(context).textTheme.headline2,
        ),
        TimerButton(
            fired: _fired, startHandler: startTimer, stopHandler: stopTimer),
      ],
    )));
  }
}

class TimerButton extends StatelessWidget {
  TimerButton(
      {Key? key,
      this.fired: false,
      required this.startHandler,
      required this.stopHandler})
      : super(key: key);

  final bool fired;
  final startHandler;
  final stopHandler;

  Widget buildStartButton(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        onPressed: startHandler,
        child: Text("Start"),
      ),
    );
  }

  Widget buildStopButton(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          onPressed: stopHandler,
          child: Text("Stop"),
        ),
        FloatingActionButton(
          onPressed: stopHandler,
          child: Text("Cancel"),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return fired == false
        ? buildStartButton(context)
        : buildStopButton(context);
  }
}
