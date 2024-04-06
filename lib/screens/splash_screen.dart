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
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CreateAccountScreen()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(), 
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 60.0,
            left: MediaQuery.of(context).size.width / 2 - 60.0,
            child: Container(
              width: 60.0,
              height: 60.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 20.0, 
            left: MediaQuery.of(context).size.width / 2 + 20.0,
            child: Container(
              width: 30.0,
              height: 30.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}