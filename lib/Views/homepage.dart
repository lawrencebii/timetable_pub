import 'package:flutter/material.dart';
import 'package:timetable/Views/alerts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() =>
      _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions =
      <Widget>[
    AlertPage(),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
    AlertPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Center(
        child: _widgetOptions
            .elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color(0xFF3B3A3A),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories),
            label: 'Business',
            backgroundColor: Color(0xFF472C2C),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Color(0xFF2F3C4B),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Alerts',
            backgroundColor: Color(0xFF232124),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
