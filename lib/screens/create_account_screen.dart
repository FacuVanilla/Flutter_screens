import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screen/screens/create_password_screen.dart';
import 'package:flutter_screen/screens/login_screen.dart';
import 'package:flutter_screen/widgets/continue_button.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 16),
            const Text(
              'Create your account',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "Let's start by creating your Akiba account.\nAlready have an account? ",
                style: const TextStyle(color: Colors.black, fontSize: 16),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Log in',
                    style: const TextStyle(color: Colors.red),
                    recognizer: TapGestureRecognizer()..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const Text('First name', style: TextStyle(fontSize: 16)),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Last name', style: TextStyle(fontSize: 16)),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Email address', style: TextStyle(fontSize: 16)),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Mobile number', style: TextStyle(fontSize: 16)),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 32),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'By continuing, you agree to Akiba’s ',
                style: const TextStyle(color: Colors.black, fontSize: 14),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Terms of Service',
                    style: const TextStyle(color: Colors.red),
                    recognizer: TapGestureRecognizer()..onTap = () {
                    },
                  ),
                  const TextSpan(
                    text: ' and acknowledge our ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: 'Privacy Policy.',
                    style: const TextStyle(color: Colors.red),
                    recognizer: TapGestureRecognizer()..onTap = () {
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ContinueButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CreatePasswordScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}