import 'package:flutter/material.dart';
import 'package:tat_flutter/screen/login_page.dart';
import 'package:tat_flutter/utils/constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Constants(
      child: MaterialApp(
        title: 'TAT - 北科學生 App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage(),
      ),
    );
  }
}
