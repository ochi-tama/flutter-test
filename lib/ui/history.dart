import 'package:flutter/material.dart';

/// 履歴ページ
class HistoryPage extends StatefulWidget {
  /// Indexed Stack用のID
  static String id = "history_page";
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text('history page'),
    ));
  }
}
