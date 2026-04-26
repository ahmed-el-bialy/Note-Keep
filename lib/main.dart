import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_keep/Cubit/Notes_Cubits/notes_cubit.dart';
import 'package:notes_keep/Models/Note_Model.dart';
import 'package:notes_keep/Views/Main_View.dart';
import 'package:notes_keep/helper/constants.dart';
import 'package:notes_keep/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox<NoteModel>(kNotesBox);

  Bloc.observer = SimpleBlocObserver();

  runApp(const NotesKeep());
}

class NotesKeep extends StatelessWidget {
  const NotesKeep({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
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
      ),
    );
  }
}
