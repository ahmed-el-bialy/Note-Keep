abstract class AddNotesState {}

class AddNotesInitial extends AddNotesState {}

class AddNotesLoading extends AddNotesState {}

class AddNotesSaved extends AddNotesState {}

class AddNotesFailed extends AddNotesState {
  final String error;

  AddNotesFailed(this.error);
}
