import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_keep/Cubit/Add_Note_Cubit/Add_Note_Cubit.dart';
import 'package:notes_keep/Cubit/Add_Note_Cubit/Notes_State.dart';

import 'Add_Note_Form.dart';

class AddNoteToButtonSheet extends StatelessWidget {
  const AddNoteToButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNotesCubit, AddNotesState>(
      listener: (context, state) {
        if (state is AddNotesSaved) {
          Navigator.pop(context);
          BlocProvider.of<AddNotesCubit>(context).resetState();
        } else if (state is AddNotesFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("failed"), duration: Duration(seconds: 2)),
          );
        }
      },
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNotesLoading ? true : false,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: AddNoteForm(),
            ),
          ),
        );
      },
    );
  }
}
