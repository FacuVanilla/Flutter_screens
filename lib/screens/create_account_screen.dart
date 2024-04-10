import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screen/screens/create_password_screen.dart';
import 'package:flutter_screen/screens/login_screen.dart';
import 'package:flutter_screen/widgets/continue_button.dart';
import 'package:flutter_screen/widgets/text_form_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_screen/widgets/terms.dart'; 

class CreateAccountScreen extends StatefulWidget {
  final GlobalKey<FormState> formKey;

  const CreateAccountScreen({super.key, required this.formKey});

  @override
  CreateAccountScreenState createState() => CreateAccountScreenState();
}

class CreateAccountScreenState extends State<CreateAccountScreen> {
  bool _hasSubmitted = false; 

  @override
  Widget build(BuildContext context) {
    Color borderColor = _hasSubmitted ? const Color(0xFFCCD1D3) : const Color(0xFF473767);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: widget.formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 16),
                const Text(
                  'Create your account',
                  style: TextStyle(
                    fontFamily: 'Coinbase Sans',
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Color(0xFF161722),
                  ),
                ),
                const SizedBox(height: 8),
                RichText(
                  text: TextSpan(
                    text: "Let's start by creating your Akiba account.\nAlready have an account? ",
                    style: const TextStyle(
                      fontFamily: 'Coinbase Sans',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      height: 1.5,
                      color: Color(0xFF625E80),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Log in',
                        style: const TextStyle(
                          color: Color(0xFFE33B58),
                          fontWeight: FontWeight.w400,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                CustomTextFormField(
                  labelText: 'First name',
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 3) {
                      return 'First name must be at least 3 characters';
                    }
                    return null;
                  },
                  borderColor: borderColor,
                  fillColor: _hasSubmitted && !widget.formKey.currentState!.validate() ? const Color(0xFFCCD1D3) : Colors.transparent, 
                ),
                CustomTextFormField(
                  labelText: 'Last name',
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 3) {
                      return 'Last name must be at least 3 characters';
                    }
                    return null;
                  },
                  borderColor: borderColor,
                  fillColor: _hasSubmitted && !widget.formKey.currentState!.validate() ? const Color(0xFFCCD1D3) : Colors.transparent, 
                ),
                CustomTextFormField(
                  labelText: 'Email address',
                  validator: (value) {
                    if (value == null || value.isEmpty || !EmailValidator.validate(value)) {
                      return 'Enter a valid email address';
                    }
                    return null;
                  },
                  borderColor: borderColor,
                  fillColor: _hasSubmitted && !widget.formKey.currentState!.validate() ? const Color(0xFFCCD1D3) : Colors.transparent, 
                ),
                CustomTextFormField(
                  labelText: 'Mobile number',
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length != 11 || !RegExp(r'^\d{11}$').hasMatch(value)) {
                      return 'Mobile number must be 11 digits';
                    }
                    return null;
                  },
                  borderColor: borderColor,
                  fillColor: _hasSubmitted && !widget.formKey.currentState!.validate() ? const Color(0xFFCCD1D3) : Colors.transparent, 
                ),
                const SizedBox(height: 32),
                Terms(
                  onTermsTap: () {
                  },
                  onPrivacyTap: () {
                  },
                ),
                const SizedBox(height: 16),
                ContinueButton(
                  onPressed: () {
                    setState(() {
                      _hasSubmitted = true; 
                    });
                    if (widget.formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CreatePasswordScreen()),
                      );
                    }
                  },
                  borderColor: _hasSubmitted && (widget.formKey.currentState?.validate() == false) ? const Color(0xFFCCD1D3) : Colors.red, // Adjust based on validation
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
