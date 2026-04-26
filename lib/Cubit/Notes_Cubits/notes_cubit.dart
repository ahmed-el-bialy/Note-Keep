
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import '../../Models/Note_Model.dart';
import '../../helper/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notesList;
  void fetchAllNotes() {

    var noteBox = Hive.box<NoteModel>(kNotesBox);


     notesList = noteBox.values.toList();


    emit(NotesSuccess(notesList!));
  }
}