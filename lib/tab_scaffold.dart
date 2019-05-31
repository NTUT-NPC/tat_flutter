import 'package:flutter/material.dart';
import 'package:tat_flutter/screen/curriculum_page.dart';

class TabScaffold extends StatefulWidget {
  @override
  _TabScaffoldState createState() => _TabScaffoldState();
}

class _TabScaffoldState extends State<TabScaffold> {
  final _bottomNavigationColor = Colors.blueGrey;
  int _selectedIndex = 0;
  final pages = [
    CurriculumPage(),
    CurriculumPage(),
    CurriculumPage(),
    CurriculumPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
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
          BottomNavigationBarItem(
              icon: Icon(Icons.menu, color: _bottomNavigationColor),
              title: Text(
                '其它',
                style: TextStyle(color: _bottomNavigationColor),
              )),
        ],
      ),
      body: pages[_selectedIndex],
    );
  }
}
