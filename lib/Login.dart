import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);
  String title;  
  _LoginState createState() => _LoginState(title: title);
}

class _LoginState extends State<Login> {
  _LoginState({this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("aaa"),
    );
  }
}