import 'package:flutter/material.dart';

/// トップページ
class HomePage extends StatefulWidget {
  /// Indexed Stack用のID
  static String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text('home page'),
    ));
  }
}
