import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_keep/Models/Note_Model.dart';

import 'Notes_State.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(AddNotesInitial());



  AddNotes(NoteModel){

  }
}