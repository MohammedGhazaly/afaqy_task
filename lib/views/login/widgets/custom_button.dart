import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final bool isLogging;
  final void Function()? onPressedFunction;
  const CustomButton(
      {super.key,
      required this.text,
      this.onPressedFunction,
      this.isLogging = false});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Color(
          0xFF0D47A1,
        ),
      ),
      onPressed: onPressedFunction,
      child: isLogging == true
          ? Center(
              child: SizedBox(
                height: 25,
                width: 25,
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            )
          : Text(text),
    );
  }
}
