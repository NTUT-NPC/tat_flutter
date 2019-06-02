import 'package:flutter/material.dart';
import 'package:tat_flutter/utils/constant.dart';

import '../tab_scaffold.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusScopeNode focusScopeNode = FocusScopeNode();

  GlobalKey<FormState> _loginFormKey = GlobalKey();

  bool isShowPassword = false;

  String _account;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              buildLoginTextForm(),
              Padding(
                padding: EdgeInsets.only(top: 48),
                child: Text(
                  "忘記密碼?",
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          Positioned(
            child: buildLoginButton(),
            top: 164,
          )
        ],
      ),
    );
  }

  Widget buildLoginTextForm() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white),
      width: 300,
      height: 190,
      child: Form(
        key: _loginFormKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
                child: TextFormField(
                  focusNode: emailFocusNode,
                  onEditingComplete: () {
                    if (focusScopeNode == null) {
                      focusScopeNode = FocusScope.of(context);
                    }
                    focusScopeNode.requestFocus(passwordFocusNode);
                  },
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                      hintText: "帳號",
                      border: InputBorder.none),
                  style: TextStyle(color: Colors.black),
                  onSaved: (value) => _account = value,
                ),
              ),
            ),
            Container(
              height: 1,
              width: 250,
              color: Colors.grey[400],
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.only(left: 25, right: 25, top: 20),
                child: TextFormField(
                  focusNode: passwordFocusNode,
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      hintText: "密碼",
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                          ),
                          onPressed: showPassword)),
                  obscureText: !isShowPassword,
                  style: TextStyle(color: Colors.black),
                  onSaved: (value) => _password = value,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLoginButton() {
    return RaisedButton(
      padding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(borderRadius:Constants.borderRadius),
      child: Container(
        padding: EdgeInsets.only(left: 40, right: 40, top: 12, bottom: 12),
        decoration: BoxDecoration(
            borderRadius: Constants.borderRadius,
            gradient: LinearGradient(
              colors: [Colors.deepOrange, Colors.orange],
              stops: [0.0, 1.0],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Text(
          "登入",
          style: TextStyle(fontSize: Constants.largeFontSize, color: Colors.white),
        ),
      ),
      onPressed: () => submit(),
    );
  }

  void showPassword() {
    setState(() {
      isShowPassword = !isShowPassword;
    });
  }

  void submit() {
    if (_loginFormKey.currentState.validate()) {
      _loginFormKey.currentState.save();
      if (_account.isEmpty) {
        Scaffold.of(context).showSnackBar(SnackBar(content: Text('帳號請勿留空')));
      } else if (_password.isEmpty) {
        Scaffold.of(context).showSnackBar(SnackBar(content: Text("密碼請勿留空")));
      } else {
        Scaffold.of(context).showSnackBar(SnackBar(content: Text("登入中")));
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => TabScaffold()),
        );
      }
    }
  }
}
