import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.label, this.maxLines = 1, this.onSaved,
  });

  final String label;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        maxLines: maxLines,
        validator: (value){
          if( value?.isEmpty ?? true ){
            return "field is required";
          }else{
            return null;
          }
        },
        onSaved:onSaved,
        decoration: InputDecoration(
          label: Text(
            label,
            style: TextStyle(
              color: Colors.white.withValues(alpha: .6),
              fontSize: 20,
            ),
          ),
          hint: Text(
            " Write your ${label.toLowerCase()} here",
            style: TextStyle(
              color: Colors.white.withValues(alpha: .6),
              fontSize: 20,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),

          ),
        ),
      ),
    );
  }
}
