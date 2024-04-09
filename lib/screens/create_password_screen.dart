import 'package:flutter/material.dart';
import 'package:flutter_screen/screens/account_created_screen.dart';
import 'package:flutter_screen/widgets/continue_button.dart';
import 'package:flutter_screen/widgets/terms.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(28, 20, 28, 16), // Adjusted top padding
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Set your password',
                          style: TextStyle(
                            fontFamily: 'Coinbase Sans',
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            height: 35 / 24,
                            color: Color(0xFF161722),
                          ),
                        ),
                        Image.asset('images/lock.png'),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Create your password',
                      style: TextStyle(
                        fontFamily: 'Coinbase Sans',
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 32.0),
                    const Text(
                      'Password',
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8.0),
                    TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: 'Enter your password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText ? Icons.visibility_off : Icons.visibility,
                          ),
                          onPressed: _togglePasswordVisibility,
                        ),
                      ),
                      obscureText: _obscureText,
                    ),
                    const SizedBox(height: 24.0),
                    ..._buildPasswordCriteria(),
                    const Divider(color: Colors.grey),
                    const SizedBox(height: 24.0),
                    const Text(
                      'Referral code (optional)',
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8.0),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your referral code',
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Please enter an invite code if you have one.',
                      style: TextStyle(fontSize: 12.0, color: Colors.grey),
                    ),
                    const SizedBox(height: 24.0),
                  ],
                ),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.fromLTRB(32, 20, 32, 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Terms(
                onTermsTap: () {
                  // Handle Terms of Service tap
                },
                onPrivacyTap: () {
                  // Handle Privacy Policy tap
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: ContinueButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AccountCreatedScreen()),
                );
              },
            ),
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }

  List<Widget> _buildPasswordCriteria() {
    return [
      Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Colors.green,
                width: 2,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(3),
            ),
            width: 24,
            height: 24,
            child: const Icon(
              Icons.check,
              color: Colors.green,
              size: 18,
            ),
          ),
          const SizedBox(width: 8.0),
          const Expanded(
            child: Text(
              'Please set a password with minimum length of 8 characters',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
     const SizedBox(height: 8.0),
      Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent, 
              border: Border.all(
                color: Colors.green, 
                width: 2, 
              ),
              shape: BoxShape.rectangle, 
              borderRadius: BorderRadius.circular(3), 
            ),
            width: 24,
            height: 24, 
            child: const Icon(
              Icons.check,
              color: Colors.green,
              size: 18, 
            ),
          ),
          const SizedBox(width: 8.0),
          const Expanded(
            child: Text(
              'Password must contain at least one upper case letter, one lower case letter, one numeric character, one special character',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    ];
  }
}
   