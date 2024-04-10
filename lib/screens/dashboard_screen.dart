import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenWidth, 
            height: 342.0, 
            decoration: const BoxDecoration(
              color: Color(0xFFE33B58), 
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(28.0),
                bottomRight: Radius.circular(28.0),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 56.0,
                  left: 78.0,
                  child: Row(
                    children: [
                      Image.asset('images/icon.png'), 
                      const SizedBox(width: 10), 
                      const Text(
                        'Hi, Kikelomo',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 56.0,
                  right: 16.0,
                  child: Image.asset('images/notification.png', width: 42.0, height: 42.0),
                ),
                Positioned(
                  top: 120.0,
                  left: 0.0,
                  right: 0.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Main Account Balance',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
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
                              fontSize: 36.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.visibility, color: Colors.white),
                            onPressed: () {
                            },
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
                    ],
                  ),
                ),
                Positioned(
                  top: 235.0, 
                  left: (screenWidth - 34.0) / 2, 
                  child: Image.asset('images/slider.png', width: 34.0, height: 10.0), 
                ),
              ],
            ),
          ),
          Image.asset(
            'images/transaction.png',
            width: screenWidth * 2.0, 
            alignment: Alignment.center.add(const Alignment(0, 0.1)), 
          ),
          Positioned(
            bottom: 60.0, 
            left: 0.0,
            right: 0.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 448.0), 
                  child: Text(
                    'Quick access',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.only(left: 450.0), 
                  child: Image.asset('images/quickaccess.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
