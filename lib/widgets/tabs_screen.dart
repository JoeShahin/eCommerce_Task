// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
/*
import 'package:flutter/material.dart';
import 'package:market_app/screens/details_page.dart';
import 'package:market_app/screens/screens_export.dart';

class TabsScreen extends StatefulWidget {
  static const String routeName = "/";

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => TabsScreen());
  }

  TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, dynamic>> _pages = [
    {
      'page': Settings(),
      'title': 'Settings',
    },
    {
      'page': Info(),
      'title': 'Info',
    },
    {
      'page': Profile(),
      'title': 'Profile',
    },
    {
      'page': Market(),
      'title': 'Home Page',
    },
    {
      'page': OrderDetails(),
      'title': 'Details',
    }
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 40, 124, 120),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          currentIndex: _selectedPageIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _selectPage,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info_outlined),
              label: 'info',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              label: 'profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'home',
            ),
          ],
        ),
      ),
    );
  }
}
*/