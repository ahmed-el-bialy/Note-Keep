import 'package:flutter/material.dart';
import '../Widgets/Edit_Note_View_Body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Note", style: TextStyle(fontSize: 27)),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
            child: Card(
              color: Colors.white.withValues(alpha: 0.1),
              elevation: 10,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.check, size: 30, color: Colors.white),
              ),
            ),
          ),
        ],
        elevation: 5,
      ),
      body: EditNoteViewBody(),
    );
  }
}
