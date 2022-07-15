import 'package:hastaraya/pages/CartPage.dart';
import 'package:hastaraya/pages/profile.dart';
import 'package:hastaraya/pages/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:hastaraya/pages/components/body.dart';
import 'package:hastaraya/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2972ff),
      body: BelajarNavBar(),
    );
  }
}

class BelajarNavBar extends StatefulWidget {
  @override
  _BelajarNavBarState createState() => _BelajarNavBarState();
}

class _BelajarNavBarState extends State<BelajarNavBar> {
  int tabIndex = 0;
  late List<Widget> listScreens;
  @override
  void initState() {
    super.initState();
    listScreens = [
      Body(),
      CartPage(),
      SettingsScreen(),
      Profile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreens[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: ('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: ('Settings'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ('Account'),
          ),
        ],
        currentIndex: tabIndex,
        selectedItemColor: primaryBlue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (int index) {
          setState(() {
            tabIndex = index;
          });
        },
      ),
    );
  }
}
