import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_keep/Cubit/Add_Note_Cubit/Add_Note_Cubit.dart';
import 'package:notes_keep/Models/Note_Model.dart';

import '../Cubit/Add_Note_Cubit/Notes_State.dart';
import 'Custom_Text_Button.dart';
import 'Custom_Text_Field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> key = GlobalKey();
  AutovalidateMode validateMode = AutovalidateMode.disabled;
  String? title;

  String? content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      autovalidateMode: validateMode,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: CustomTextField(
              label: "Note Title",
              onSaved: (value) {
                title = value;
              },
            ),
          ),
          CustomTextField(
            label: "Note description",
            maxLines: 10,
            onSaved: (value) {
              content = value;
            },
          ),
          const SizedBox(height: 35),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomTextButton(
                onTap: () {
                  if (key.currentState!.validate()) {
                    key.currentState!.save();
                    var note = NoteModel(title: title!,
                        content: content!,
                        createdDate: (DateTime.now()).toString(),
                        lastEditedDate: (DateTime.now()).toString(),
                        color: 0xffFFCC80);
                    BlocProvider.of<AddNotesCubit>(context).AddNotes(note);
                  } else {
                    validateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },isLoading: state is AddNotesLoading ? true : false,
              );
            },
          ),
          const SizedBox(height: 45),
        ],
      ),
    );
  }
}
