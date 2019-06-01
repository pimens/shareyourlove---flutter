import 'package:flutter/material.dart';
import 'package:shareyourlove/Beranda.dart';
import 'package:shareyourlove/Data.dart';
import 'package:shareyourlove/Login.dart';
import 'package:shareyourlove/src/ui/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Share Yoour Lovee',
      theme: ThemeData(     
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        '/beranda' : (context) => Beranda(),
        '/login' : (context) => Login(),
        '/data' : (context) => Data(),
        '/' : (context) => Home(),
      },
      
    );
  }
}

