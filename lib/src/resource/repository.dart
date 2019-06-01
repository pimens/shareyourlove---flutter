import 'package:shareyourlove/src/models/notesModels.dart';
import 'package:shareyourlove/src/resource/notesApiProvider.dart';

class Repository{
  final notesApiProvider = NotesApiProvider();
  Future<List<Notes>> fetchAllNotes() => notesApiProvider.fetchNotesList();
}