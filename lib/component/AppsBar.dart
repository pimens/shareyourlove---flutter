import 'package:flutter/material.dart';
class AppsBar extends StatelessWidget {
  // AppsBar({this.title});
  // final String title;
  @override
  Widget build(BuildContext context) {
    return new AppBar(
       title: Text("tit"),
       leading: Icon(Icons.toc),
    );
  }
}