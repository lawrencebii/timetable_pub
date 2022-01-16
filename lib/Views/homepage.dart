import 'package:flutter/material.dart';
import 'package:timetable/Views/alerts.dart';
import 'package:timetable/Views/classes.dart';
import 'package:timetable/Views/example_classe.dart';
import 'package:timetable/Views/homework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    // TheClasses(),
    MockClasses(),
    HomeworkPage(),

    AlertPage(),
    Text(
      'Index 2: School',
    ),
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
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        items: const <BottomNavigationBarItem>[
          
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories),
            label: 'Classes',
            backgroundColor: Color(0xFF3B3A3A),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_work),
            label: 'Homework',
            backgroundColor: Color(0xFF472C2C),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Alerts',
            backgroundColor: Color(0xFF232124),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.admin_panel_settings),
            label: 'Admin',
            backgroundColor: Color(0xFF2E3032),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
