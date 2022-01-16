// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:timetable/State/appstate1.dart';

import 'package:timetable/Views/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  
  runApp(MultiProvider(
    providers: [
      
        ChangeNotifierProvider.value(value: AppState()),
    ],
    child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity:
            VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
