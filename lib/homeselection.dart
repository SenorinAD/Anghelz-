import 'package:flutter/material.dart';
import 'package:subdisakayforreal/nav_screens/accoutsettingspage.dart';
import 'package:subdisakayforreal/nav_screens/homepage.dart';
import 'package:subdisakayforreal/nav_screens/messagepage.dart';
import 'package:subdisakayforreal/nav_screens/notificationpage.dart';

class HomeSelection extends StatefulWidget {
  const HomeSelection({Key? key}) : super(key: key);

  @override
  State<HomeSelection> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<HomeSelection> {
  int _selectedIndex = 0;

  final screens = [
    HomeMap(),
    MessagePage(),
    NotificationPage(),
    AccountSettings(),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
            label: 'Messages',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_rounded),
            label: 'Notifications',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );


  }

}

