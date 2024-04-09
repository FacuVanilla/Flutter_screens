import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class Terms extends StatelessWidget {
  final VoidCallback onTermsTap;
  final VoidCallback onPrivacyTap;

  const Terms({super.key, required this.onTermsTap, required this.onPrivacyTap});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontFamily: 'Coinbase Sans',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 22 / 14, // Flutter uses a multiplier for line height
          color: Colors.black, // Default text color
        ),
        children: <TextSpan>[
          const TextSpan(
            text: 'By continuing, you agree to Akiba’s ',
          ),
          TextSpan(
            text: 'Terms of Service',
            style: const TextStyle(color: Color(0xFFE33B58)), // Updated color
            recognizer: TapGestureRecognizer()..onTap = onTermsTap,
          ),
          const TextSpan(
            text: ' and acknowledge our ',
          ),
          TextSpan(
            text: 'Privacy Policy.',
            style: const TextStyle(color: Color(0xFFE33B58)), // Updated color
            recognizer: TapGestureRecognizer()..onTap = onPrivacyTap,
          ),
        ],
      ),
      textAlign: TextAlign.left,
    );
  }
}
