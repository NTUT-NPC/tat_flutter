import 'package:flutter/material.dart';

class TabScaffold extends StatefulWidget {
  @override
  _TabScaffoldState createState() => _TabScaffoldState();
}

class _TabScaffoldState extends State<TabScaffold> {
  final _bottomNavigationColor = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TAT',
          style: TextStyle(letterSpacing: 4),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: _bottomNavigationColor),
            title: Text(
              '課表',
              style: TextStyle(color: _bottomNavigationColor),
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, color: _bottomNavigationColor),
            title: Text(
              '行事曆',
              style: TextStyle(color: _bottomNavigationColor),
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.assessment, color: _bottomNavigationColor),
            title: Text(
              '學分',
              style: TextStyle(color: _bottomNavigationColor),
            )),
      ]),
    );
  }
}
