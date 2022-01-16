// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timetable/widgets/alert_body.dart';


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
              alertTitle: 'TOS CAT',
              alertVenue: 'Sp Annex',
              alertDay: '28th Oct 1899'),
          SizedBox(height: 50,),
          Center(
            child: Text('Coming soon..',style: GoogleFonts.audiowide(
              color: Colors.white,
              fontSize: 24
            ),),
          )
        ],
      ),
    );
  }
}
