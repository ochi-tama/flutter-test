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
  int _duration = 14;
  late DateTime _time;
  bool _fired = false;

  @override
  void initState() {
    _time = DateTime.utc(0, 0, 0, 0, 0, 0);
    _endDate = DateTime.utc(0, 0, 0, 0, 0, 0);
    super.initState();
  }

  void startTimer() {
    _endDate = DateTime.now().add(Duration(days: _duration));
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

  void selectDuration(int? selected) {
    setState(() {
      _duration = selected!;
    });
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

  // 要レイアウト調整
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          remainingTime(),
          style: Theme.of(context).textTheme.headline2,
        ),
        SelectDurationMenu(onTapHandler: selectDuration),
        TimerButton(
            fired: _fired, startHandler: startTimer, stopHandler: stopTimer),
      ],
    );
  }
}

class SelectDurationMenu extends StatefulWidget {
  final void Function(int?) onTapHandler;

  SelectDurationMenu({Key? key, required this.onTapHandler}) : super(key: key);

  @override
  _SelectDurationMenuState createState() => _SelectDurationMenuState();
}

class _SelectDurationMenuState extends State<SelectDurationMenu> {
  int _selected = 14;
  final Map<String, int> _durationMap = const {
    "1day": 1,
    "1w": 7,
    "2w": 14,
    "1m": 30,
  };
  late final durationKeys = _durationMap.keys;

  Widget _buildDurationButton(String description, int value, int groupValue,
      void Function(int?) onChanged) {
    return Column(
      children: [
        Radio(
            value: value,
            groupValue: groupValue,
            onChanged: (int? selected) {
              onChanged(selected);
              setState(() {
                _selected = selected!;
              });
            }),
        Text(description)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final buttonList = _durationMap.entries
        .map((e) => _buildDurationButton(
            e.key, e.value, _selected, widget.onTapHandler))
        .toList();
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: buttonList,
    ));
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
