import 'package:flutter/material.dart';
import 'package:tat_flutter/tab_scaffold.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TAT - 北科學生 App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabScaffold(),
    );
  }
}
