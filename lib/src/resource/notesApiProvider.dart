import 'package:flutter/foundation.dart';
import 'package:http/http.dart' show Client;
import 'package:shareyourlove/src/models/notesModels.dart';
class NotesApiProvider{
  Client client = Client();
  final _url="http://192.168.1.6:8000/catatans";
  Future<List<Notes>> fetchNotesList() async {
    print('masuk');
    final response = await client.get(_url);
    if(response.statusCode==200){
      return compute(notesFromJson,response.body);
    }else{
      throw Exception('failed');
    }   

  }
}
