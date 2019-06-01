import 'package:shareyourlove/src/models/notesModels.dart';
import 'package:shareyourlove/src/resource/repository.dart';
import 'package:rxdart/rxdart.dart';
class NotesBloc{
  final _repository = Repository();
  final _notesFetcher = PublishSubject<List<Notes>>();
  Observable<List<Notes>> get allNotes => _notesFetcher.stream;
  fetchAllNotes() async{
    List<Notes> notes = await _repository.fetchAllNotes();
    _notesFetcher.sink.add(notes);
  }
  dispose(){
    _notesFetcher.close();
  }
}
final bloc = NotesBloc();