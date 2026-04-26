abstract class NotesState {}

class AddNotesInitial extends NotesState {}

class AddNotesLoading extends NotesState {}

class AddNotesSaved extends NotesState {}

class AddNotesFailed extends NotesState {
  final String error;

  AddNotesFailed(this.error);
}
