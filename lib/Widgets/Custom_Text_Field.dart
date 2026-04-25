
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.label, this.maxLines = 1,
  });
final String label;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        maxLines: maxLines,
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
