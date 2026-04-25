import 'package:flutter/material.dart';
import 'package:notes_keep/Views/Edit_Note_View.dart';

import 'Edit_Note_View_Body.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return EditNoteView();
              },
            ),
          );
        },
        child: EditNoteViewBody(),
      ),
    );
  }
}
