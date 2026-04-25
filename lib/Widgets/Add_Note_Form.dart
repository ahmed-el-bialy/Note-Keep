import 'package:flutter/material.dart';

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
          CustomTextButton(
            onTap: () {
              if (key.currentState!.validate()) {
                key.currentState!.save();
              } else {
                validateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 45),
        ],
      ),
    );
  }
}
