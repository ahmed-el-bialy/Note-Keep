import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onTap,
    this.isLoading = false,
  });

  final void Function() onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(18),
        ),
        fixedSize: const Size(200, 50),
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.black,
      ),
      onPressed: onTap,
      child: isLoading == false
          ? Text(
              "Add",
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )
          : CircularProgressIndicator(
              color: Colors.black,
              padding: EdgeInsets.symmetric(vertical: 2),
            ),
    );
  }
}
