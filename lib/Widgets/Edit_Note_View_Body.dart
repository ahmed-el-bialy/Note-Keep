
import 'package:flutter/material.dart';

import 'Custom_Text_Button.dart';
import 'Custom_Text_Field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: CustomTextField(label: "Note Title"),
        ),
        CustomTextField(label: "Note description", maxLines: 10),
        SizedBox(height: 35),
        CustomTextButton(),
        SizedBox(height: 45),
      ],
    );
  }
}
