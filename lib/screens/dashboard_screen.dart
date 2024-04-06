import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color secondaryColor = Colors.white; 
    const Color accentColor = Colors.pink; 
    const Color unselectedItemColor = Colors.grey; 
    const Color lastBoxBackgroundColor = Colors.deepPurpleAccent; 
    const Color iconBackgroundColor = Colors.grey;

    const Color iconColor1 = Colors.red;
    const Color iconColor2 = Colors.yellow;
    const Color iconColor3 = Colors.blue;


    return Scaffold(
      backgroundColor: accentColor, 
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.account_circle, 
                        color: secondaryColor, 
                        size: 24.0, 
                      ),
                      SizedBox(width: 8.0), 
                      Text(
                        'Hi, Kikelomo',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: secondaryColor,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.notifications, 
                    color: secondaryColor, 
                    size: 24.0, 
                  ),
                ],
              ),
              const SizedBox(height: 20.0), 
              Center(
                child: Column(
                  children: [
                    const Text(
                      'Main Account Balance',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: secondaryColor,  
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    RichText(
  text: const TextSpan(
    children: [
      TextSpan(
        text: '₦ 0.00',
        style: TextStyle(
          fontSize: 24.0, 
          fontWeight: FontWeight.bold, 
          color: secondaryColor, 
        ),
      ),
      WidgetSpan(
        child: Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Icon(
            Icons.visibility_off, 
            size: 24.0, 
            color: secondaryColor, 
          ),
        ),
      ),
    ],
  ),
),
                    const Text(
                      'Account number: 0005400225',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: secondaryColor, 
                      ),
                    ),
                    const SizedBox(height: 16.0), 
                    const Row(
                      mainAxisSize: MainAxisSize.min, 
                      children: [
                        CircleAvatar(
                          radius: 4.0, 
                          backgroundColor: secondaryColor, 
                        ),
                        SizedBox(width: 4.0), 
                        CircleAvatar(
                          radius: 2.0, 
                          backgroundColor: secondaryColor, 
                        ),
                        SizedBox(width: 4.0), 
                        CircleAvatar(
                          radius: 2.0, 
                          backgroundColor: secondaryColor, 
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0), 
              Center( 
                child: Container(
                  width: 1000.0, 
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: secondaryColor.withOpacity(0.2), 
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: const Offset(0, 3), 
                      ),
                    ],
                  ),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.add, 
                            color: Colors.deepPurple, 
                            size: 24.0, 
                          ),
                          SizedBox(width: 8.0), 
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Add money',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Top up your wallet balance',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey, 
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0), 
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_upward, 
                            color: Colors.red, 
                            size: 24.0, 
                          ),
                          SizedBox(width: 8.0), 
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Withdraw',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Move money out of wallet',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
const SizedBox(height: 24.0),
const Text(
  'Quick access',
  style: TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  ),
),
const SizedBox(height: 16.0),
const Wrap(
  alignment: WrapAlignment.spaceBetween,
  runSpacing: 16.0,
  children: <Widget>[
    QuickAccessItem(
      icon: Icons.savings,
      label: 'Start a savings program',
      iconColor: iconColor1,
      backgroundColor: iconBackgroundColor, 
    ),
    QuickAccessItem(
      icon: Icons.currency_exchange,
      label: 'Request a Loan',
      iconColor: iconColor2,
      backgroundColor: iconBackgroundColor, 
    ),
    QuickAccessItem(
      icon: Icons.phone_android,
      label: 'Buy Data & Airtime',
      iconColor: iconColor3,
      backgroundColor: iconBackgroundColor, 
    ),
  ],
),
Container(
  margin: const EdgeInsets.only(top: 16.0), 
  padding: const EdgeInsets.all(16.0),
  decoration: BoxDecoration(
    color: lastBoxBackgroundColor, 
    borderRadius: BorderRadius.circular(10.0), 
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to Akiba Tribe',
              style: TextStyle(
                color: Colors.lime,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              'Complete account set up',
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 16.0),
            Stack(
              children: [
                Container(
                  width: 100.0, 
                  height: 5.0,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                Container(
                  width: 20.0, 
                  height: 5.0,
                  decoration: BoxDecoration(
                    color: Colors.lime,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4.0),
            const Text(
              '1/5',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue, 
          borderRadius: BorderRadius.circular(4.0), 
        ),
        padding: const EdgeInsets.all(8.0), 
        child: const Icon(
          Icons.check,
          color: lastBoxBackgroundColor, 
          size: 24.0,
        ),
      ),
    ],
  ),
),
            ],
            
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
  items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.savings),
      label: 'Savings',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_balance_wallet),
      label: 'Loans',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.group),
      label: 'Tribe',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ],
  selectedItemColor: accentColor, 
  unselectedItemColor: unselectedItemColor.withOpacity(0.5),
),
    );
  }
}


class QuickAccessItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconColor;
  final Color backgroundColor;

  const QuickAccessItem({
    super.key,
    required this.icon,
    required this.label,
    required this.iconColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    double itemWidth = 400.0; 

    return Container(
      width: itemWidth,
      margin: const EdgeInsets.symmetric(horizontal: 8.0), 
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: backgroundColor, 
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            icon,
            size: 24.0,
            color: iconColor, 
          ),
          const SizedBox(height: 8.0),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
