import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Data extends StatefulWidget {
  Data({Key key}) : super(key: key);
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  final db = Firestore.instance;
  void deleteData(DocumentSnapshot doc) async {
    await db.collection('player').document(doc.documentID).delete();
    // setState(() => id = null);
  }
 void createData() async {
    
      // DocumentReference ref = await db.collection('CRUD').add({'name': '$name 😎', 'todo': randomTodo()});
      await db.collection('player').add({'n': 'faris', 'a': 'mobjo','p' : 'mainan','b':'4900'});
      // setState(() => id = ref.documentID);
      // print(ref.documentID);
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('aaapp'),
      ),
      body: StreamBuilder(
          stream: db.collection('player').where('n', isEqualTo: 'faris').where('a', isEqualTo: 'mobjo').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) return new Text('Error: ${snapshot.error}');
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return new Text('Loading...');
              default:
                return new ListView(
                  children: snapshot.data.documents.map((document) {
                    return new Column(
                      children: <Widget>[
                        Text(document['n']),
                        Text(document['p']),
                        SizedBox(width: 8),
                        FlatButton(
                          onPressed: () => deleteData(document),
                          child: Text('Delete'),
                        ),
                        FlatButton(
                          onPressed: () => createData(),
                          child: Text('create'),
                        ),
                      ],
                    );
                  }).toList(),
                );
            }
          }),
    );
  }
}
