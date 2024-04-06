import 'package:flutter/material.dart';
import 'package:flutter_screen/screens/account_created_screen.dart';
import 'package:flutter_screen/widgets/continue_button.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Set your password',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.lock_outline, size: 30), 
                  ],
                ),
              ),
              const SizedBox(height: 8.0),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Create your password',
                  style: TextStyle(fontSize: 16.0, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 32.0),
              const Text('Password', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
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
              const Text('Referral code (optional)', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
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
              ContinueButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AccountCreatedScreen()),
                  );
                },
              ),
            ],
          ),
        ),
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