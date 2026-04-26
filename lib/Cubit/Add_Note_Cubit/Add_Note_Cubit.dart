import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_keep/helper/constants.dart';

import 'Notes_State.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  AddNotes(NoteModel) async {
    emit(AddNotesLoading());
    try {
      var noteBox = Hive.box(kNotesBox);
      await noteBox.add(NoteModel);
      emit(AddNotesSaved());
    } on Exception catch (e) {
      emit(AddNotesFailed(e.toString()));
    }
  }
}
