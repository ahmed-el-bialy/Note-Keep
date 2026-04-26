import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_keep/Cubit/Add_Note_Cubit/Add_Note_Cubit.dart';
import 'package:notes_keep/Models/Note_Model.dart';
import 'package:notes_keep/Views/Main_View.dart';
import 'package:notes_keep/helper/constants.dart';
import 'package:notes_keep/simple_bloc_observer.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox(kNotesBox);
  runApp(NotesKeep());
}

class NotesKeep extends StatelessWidget {
  const NotesKeep({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Poppins",
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          shape: const CircleBorder(),
          backgroundColor: Colors.lightBlueAccent,
          iconSize: 35,
          foregroundColor: Colors.black,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MainView(),
    );
  }
}
