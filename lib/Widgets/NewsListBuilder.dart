
import 'package:flutter/material.dart';
import 'package:notes_keep/Widgets/Note_Card.dart';

class NotesListBuilder extends StatelessWidget {
  const NotesListBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return NoteCard();
      },
    );
  }
}