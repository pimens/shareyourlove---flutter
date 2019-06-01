import 'package:flutter/material.dart';
import 'component/Drawer.dart' as Dr;

class Beranda extends StatefulWidget {
  Beranda({Key key}) : super(key: key);
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("tit"),
        leading: Icon(Icons.toc),
      ),
      drawer: Dr.DrawerApp(),
      body: new Column(
        children: <Widget>[
          new Text("data"),
          new RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/data");              
            },
            child: Text("go data"),
          ),
        ],
      ),
    );
  }
}
