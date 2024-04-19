import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 350,
                          decoration: const BoxDecoration(
                            color: Color(0xFFE33B58), 
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0),
                            ),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 30.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Image.asset('images/icon.png'),
                                  ),
                                  const SizedBox(width: 5.0),
                                  const Text(
                                    'Hi, Kikelomo',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                      height: 1.4,
                                    ),
                                  ),
                                  const SizedBox(width: 180.0),
                                  Image.asset('images/notification.png'),
                                ],
                              ),
                              const SizedBox(height: 20.0),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Main Account Balance',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  const SizedBox(height: 4.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        '₦ 0.00',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 26.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.visibility_off, color: Colors.white),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                'Account number: 0005400225',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(height: 20.0),
                              const SizedBox(height: 10.0),
                              Image.asset('images/slider.png', width: 34.0, height: 10.0),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white, 
                          child: Column(
                            children: [
                              const SizedBox(height: 155.0), 
                              Transform.translate(
                                offset: const Offset(0, -40), 
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 16.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Quick access',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 1.0),
                              Transform.translate(
                                offset: const Offset(0, -30), 
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: Image.asset('images/quickaccess.png'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0, top: .0, bottom: 5.0, right: 16.0),
                                child: Image.asset('images/complete.png'),
                              ),
                              const SizedBox(height: 10.0),
                              Image.asset('images/tabbar.png'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 235, 
                      left: 0,
                      right: 0,
                      child: Image.asset('images/transaction.png'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
