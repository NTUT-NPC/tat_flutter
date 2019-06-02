import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tat_flutter/utils/constant.dart';
import 'package:tat_flutter/widget/login_form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: kScreenPadding,
          decoration: new BoxDecoration(
              borderRadius: kBorderRadius,
              gradient: LinearGradient(
                colors: const [Colors.blueAccent, Colors.blue],
                stops: const [0.0, 1.0],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      height: 1,
                      width: 54,
                      decoration: BoxDecoration(
                          gradient: new LinearGradient(colors: [
                        Colors.white10,
                        Colors.white,
                      ])),
                    ),
                    new Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        '北科入口',
                        style: TextStyle(
                            fontSize: kExtraLargeFontSize,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    new Container(
                      height: 1,
                      width: 54,
                      decoration: BoxDecoration(
                          gradient: new LinearGradient(colors: [
                        Colors.white,
                        Colors.white10,
                      ])),
                    ),
                  ],
                ),
                LoginForm()
              ],
            ),
          )),
    );
  }
}
