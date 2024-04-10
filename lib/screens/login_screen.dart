import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screen/screens/create_account_screen.dart';
import 'package:flutter_screen/screens/dashboard_screen.dart';
import 'package:flutter_screen/widgets/continue_button.dart'; 

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>(); 

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;

    final double backgroundHeight = screenHeight * 0.4;
    const double cardTopPadding = 20.0; 

    return Scaffold(
     body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: backgroundHeight,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/smile.png'), 
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Positioned(
                 // top: screenHeight * 0.1, 
                 // child: Image.asset('images/akiba.png'),
               // ),
              ],
            ),
            Transform.translate(
              offset: const Offset(0, -cardTopPadding), 
              child: Card(
                color: const Color(0xFFFFFFFF), 
                margin: EdgeInsets.zero, 
                elevation: 5.0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const Text(
                        'Welcome back 👋',
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Log in to your Akiba account.',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                      const SizedBox(height: 4),
                      RichText(
                        text: TextSpan(
                          text: 'New to Akiba? ',
                          style: const TextStyle(fontSize: 16, color: Colors.black54),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Create an account',
                              style: const TextStyle(fontSize: 16, color: Colors.red, decoration: TextDecoration.underline),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => CreateAccountScreen(formKey: GlobalKey<FormState>())),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),
                      const Text('Email address or username', style: TextStyle(fontSize: 16)),
                      const TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFEEEEEE), 
                          hintText: 'kiks_faboro',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 16),
                      const Text('Password', style: TextStyle(fontSize: 16)),
                      TextField(
                        decoration: InputDecoration(
                          hintText: '..............',
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.visibility_off),
                            onPressed: () {
                            },
                          ),
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(height: 24),
                      ContinueButton(
                        buttonText: 'Log in',
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const DashboardScreen()),
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: InkWell(
                          onTap: () {
                          },
                           child: const Text(
                            'Reset password?',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16, 
                            ),
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}