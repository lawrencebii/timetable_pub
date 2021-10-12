// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:timetable/Models/class_model.dart';
import 'package:timetable/Models/class_response_model.dart';
import 'package:timetable/utilities/api_helper.dart';
import 'package:timetable/utilities/dims.dart';
import 'package:timetable/widgets/appbar.dart';
import 'package:timetable/widgets/classes_body.dart';
import 'package:timetable/widgets/row_text.dart';
import 'package:http/http.dart' as http;

class TheClasses extends StatefulWidget {
  const TheClasses({Key? key}) : super(key: key);

  @override
  _TheClassesState createState() => _TheClassesState();
}

class _TheClassesState extends State<TheClasses> {
  late Future<ClassResponseModel> units;
  Future<ClassResponseModel> fetchUnits() async {
    final response = await http.get(Uri.parse(
        'https://southrift.jkuatcatcom.org/public/api/timetable'));

    if (response.statusCode == 200) {
      print('Fetched');

      return ClassResponseModel.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
    units = fetchUnits();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: const Color(0xFF0F0F0F),
        appBar: AppBar(
          backgroundColor: const Color(0xFF000000),
          title: const BarApp(title: 'Classes'),
        ),
        body: FutureBuilder<ClassResponseModel>(
          future: units,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListView(
                  children: [
                    for (var item in snapshot.data!.timetable)
                      ClassBody(
                        unit: item.subject,
                        startTime: item.start.split(':').first +
                            ':' +
                            item.start.split(':')[1],
                        lecturer: item.lecturer,
                        venue: item.venue,
                        day: item.day,
                      )
                  ],
                ),
              );
            }

            else if (snapshot.hasError) {
              return Text('Oops!!\nPlease check your internet connectivity and try again',style: TextStyle(color: Color(
                  0xff9a4b38),fontSize: 25,fontStyle: FontStyle.italic),);
            }
            return Center(
              child: SizedBox(
                height: 100,
                width: 100,
                child: const CircularProgressIndicator(

                  color: Color(0xff348723),
                  strokeWidth: 6,
                ),
              ),
            );
          },
        ));
  }
}
