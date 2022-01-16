// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timetable/utilities/dims.dart';
import 'package:timetable/widgets/appbar.dart';
import 'package:timetable/widgets/homework_body.dart';
import 'package:timetable/widgets/row_text.dart';

class HomeworkPage extends StatefulWidget {
  const HomeworkPage({Key? key}) : super(key: key);

  @override
  _HomeworkPageState createState() => _HomeworkPageState();
}

class _HomeworkPageState extends State<HomeworkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Alerts',
          style: TextStyle(
              color: Color(0xFF777474),
              fontWeight: FontWeight.w400,
              fontSize: 20),
        ),
        backgroundColor: const Color(0xFF000000),
      ),
      backgroundColor: const Color(0xFF0F1110),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            HomeworkBody(
              homeTitle: 'Theory of Structures I',
              homeworkDay: "Tomorrow",
            ),
            HomeworkBody(
              homeTitle: 'Fluid Mechanics I',
              homeworkDay: "Friday",
            ),
            SizedBox(height: 50,),
            Center(
              child: Text('Coming soon..',style: GoogleFonts.audiowide(
                  color: Colors.white,
                  fontSize: 24
              ),),
            )
          ],
        ),
      ),
    );
  }
}
