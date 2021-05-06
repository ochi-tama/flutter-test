import 'package:flutter/material.dart';
import 'dart:async';

class TimerPage extends StatefulWidget {
  static int timeLimit = 0;
  static String id = "timer_page";
  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  late Timer _timer;
  late DateTime _endDate;
  int duration = 14;
  late DateTime _time;
  bool _fired = false;

  @override
  void initState() {
    _time = DateTime.utc(0, 0, 0, 0, 0, 0);
    _endDate = DateTime.utc(0, 0, 0, 0, 0, 0);
    super.initState();
  }

  void startTimer() {
    _endDate = DateTime.now().add(Duration(days: duration));
    _time = DateTime.now();
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
      _time = DateTime.utc(0, 0, 0, 0, 0, 0);
      _endDate = DateTime.utc(0, 0, 0, 0, 0, 0);
      _fired = false;
    });
    _timer.cancel();
  }

  // .toString().padLeft(2, "0")
  String remainingTime() {
    final remaining = _endDate.difference(_time);
    final days = remaining.inDays;
    final hours = remaining.inHours - remaining.inDays * 24;
    final minutes = remaining.inMinutes - remaining.inHours * 60;
    final seconds = remaining.inSeconds - remaining.inMinutes * 60;
    final formattedRemaining = "$days d $hours:$minutes:$seconds";
    return formattedRemaining;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          remainingTime(),
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
