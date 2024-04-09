import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screen/screens/create_account_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 10), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CreateAccountScreen(formKey: GlobalKey<FormState>())),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFFE33B58),
        child: Center(
          child: Image.asset('images/dots.png'),
        ),
      ),
    );
  }
}