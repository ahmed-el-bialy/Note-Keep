import 'package:notes_keep/Cubits/Notes_State.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
}