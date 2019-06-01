import 'package:flutter/material.dart';
import 'package:shareyourlove/src/bloc/notesBloc.dart';
import 'package:shareyourlove/src/models/notesModels.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String n = "";
  @override
  void initState() {
    bloc.fetchAllNotes();
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  TextEditingController nama = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bloc Notes"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: StreamBuilder(
                stream: bloc.allNotes,
                builder: (context, AsyncSnapshot<List<Notes>> snapshot) {
                  if (snapshot.hasData) {
                    return buildList(snapshot);
                  } else if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
            new TextField(
              controller: nama,
              autofocus: false,
              onChanged: (text) {
                setState(() {
                  n = text;
                });
              },
              decoration: InputDecoration(
                hintText: 'Pengeluaran',
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            Text(n),
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/data');
              },
              child: Text("data"),
            )
          ],
        ));
  }

  Widget buildList(AsyncSnapshot<List<Notes>> snapshot) {
    return ListView.builder(
      itemCount: snapshot.data.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            Text(snapshot.data[index].pengeluaran),
          ],
        );
      },
    );
  }
}
