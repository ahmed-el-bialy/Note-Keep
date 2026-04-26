import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_keep/Cubit/Notes_Cubits/notes_cubit.dart';
import 'package:notes_keep/Widgets/Note_Card.dart';

class NotesListBuilder extends StatelessWidget {
  const NotesListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListView.builder(
            itemCount: state is NotesSuccess ? state.notes.length : 0,
            itemBuilder: (BuildContext context, int index) {
              var notesList = (state as NotesSuccess).notes;
              return NoteCard(model: notesList[index]);
            },
          ),
        );
      },
    );
  }
}
