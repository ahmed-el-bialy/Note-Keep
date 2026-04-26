import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_keep/helper/constants.dart';

import '../../Models/Note_Model.dart';
import 'Add_Notes_State.dart';
class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  Future<void> addNotes(NoteModel note) async {
    emit(AddNotesLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);

      await noteBox.add(note);

      emit(AddNotesSaved());
    } catch (e) { // شيلنا on Exception عشان يلقط أي نوع خطأ
      emit(AddNotesFailed(e.toString()));
    }
  }

  void resetState() {
    emit(AddNotesInitial());
  }
}
