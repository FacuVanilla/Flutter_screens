import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color? borderColor; // Add this line

  const ContinueButton({
    super.key,
    required this.onPressed,
    this.buttonText = 'Continue',
    this.borderColor, // Add this line
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: borderColor ?? Colors.red, // Use borderColor here
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          textStyle: const TextStyle(fontSize: 18),
          side: borderColor != null ? BorderSide(color: borderColor!) : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(buttonText),
      ),
    );
  }
}