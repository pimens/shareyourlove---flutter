import 'package:flutter/material.dart';
// import '.dart';

class DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text("Iman"),
              accountEmail: new Text("Iman@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                child : new Image.asset("asset/avatar.jpg") 
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Item 1'),
              onTap: () {
                Navigator.pushNamed(context, "/login");
               
              },
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Item 2'),
              onTap: () {
               
              },
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              title: Text('Item 3'),
              onTap: () {
                
              },
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              title: Text('Item 4'),
              onTap: () {
                
              },
              trailing: Icon(Icons.chevron_right),
            ),
          ],
        ),
    );
  }
}