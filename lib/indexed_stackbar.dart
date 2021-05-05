import 'package:flutter/material.dart';
import 'history.dart';
import 'timer.dart';
import 'package:test_app/home.dart';

class IndexedStackBar extends StatefulWidget {
  static String id = 'indexed_stack_bar';

  @override
  _IndexedStackBarState createState() => _IndexedStackBarState();
}

class _IndexedStackBarState extends State<IndexedStackBar> {
  int _selectedIndex = 0;
  final Map<int, String> _appbarTitle = const {
    0: "Timer",
    1: 'History',
    2: 'Settings'
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appbarTitle[_selectedIndex]),
        actions: [],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: <Widget>[
          TimerPage(),
          HistoryPage(),
          HomePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.timelapse),
              label: 'timer',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'history',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'my_page',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          // onTap: _onItemTapped,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}
