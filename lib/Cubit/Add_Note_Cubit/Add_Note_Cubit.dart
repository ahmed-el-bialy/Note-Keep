import 'package:flutter_bloc/flutter_bloc.dart';

import 'Notes_State.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(AddNotesInitial());
}