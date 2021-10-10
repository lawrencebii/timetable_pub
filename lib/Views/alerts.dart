// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:timetable/utilities/dims.dart';
import 'package:timetable/widgets/alert_body.dart';
import 'package:timetable/widgets/appbar.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  _AlertPageState createState() =>
      _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF363535),
      appBar: AppBar(
        backgroundColor: const Color(0xFF000000),
        title: const Text(
          'Alerts',
          style: TextStyle(
              color: Color(0xFF777474),
              fontWeight: FontWeight.w400,
              fontSize: 20),
        ),
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          const AlertBody(
              alertTitle: 'Math Test',
              alertVenue: 'Sp Annex',
              alertDay: '28th Oct')
        ],
      ),
    );
  }
}
