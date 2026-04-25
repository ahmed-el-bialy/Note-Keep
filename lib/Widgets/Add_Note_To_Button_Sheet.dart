
import 'package:flutter/material.dart';

import 'Add_Note_Form.dart';

class AddNoteToButtonSheet extends StatelessWidget {
  const AddNoteToButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AddNoteForm(),
    );
  }
}