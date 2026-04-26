import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_keep/Models/Note_Model.dart';
import '../../Models/Note_Model.dart';
import '../../helper/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  Future<void> notes(NoteModel)async{

    fetchAllNotes() async {
      try {
        var noteBox = Hive.box(kNotesBox);
       var notesList = noteBox.values.toList() ;
        emit(NotesSuccess(notesList));
      } on Exception catch (e) {
        emit(NotesFailed(e.toString()));
      }
    }
    }
  }
