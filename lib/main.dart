import 'package:flutter/material.dart';
import 'package:notes_keep/Views/Main_View.dart';

void main() {
  runApp(NotesKeep());
}

class NotesKeep extends StatelessWidget {
  const NotesKeep({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: MainView(),
    );
  }
}
