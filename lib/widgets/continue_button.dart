import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const ContinueButton({
    super.key,
    required this.onPressed,
    this.buttonText = 'Continue',
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.red,
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          textStyle: const TextStyle(fontSize: 18),
        ),
        child: Text(buttonText),
      ),
    );
  }
}