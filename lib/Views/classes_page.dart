// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, curly_braces_in_flow_control_structures

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:timetable/Logic/week_sort.dart';
import 'package:timetable/Models/class_model.dart';
import 'package:timetable/Models/class_response_model.dart';
import 'package:timetable/State/appstate1.dart';
import 'package:timetable/utilities/api_helper.dart';
import 'package:timetable/utilities/dims.dart';
import 'package:timetable/widgets/appbar.dart';
import 'package:timetable/widgets/classes_body.dart';
import 'package:timetable/widgets/row_text.dart';
import 'package:http/http.dart' as http;
import 'package:timetable/widgets/week_days.dart';

class MockClasses extends StatefulWidget {
  const MockClasses({Key? key}) : super(key: key);

  @override
  _MockClassesState createState() => _MockClassesState();
}

class _MockClassesState extends State<MockClasses> {
  SortClasses _sort = SortClasses();
  String text = DateFormat('EEEE').format(DateTime.now());

  @override
  void initState() {
    _sort.addDay(text);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    context.read<AppState>().fetchUnits;

    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      appBar: AppBar(
        elevation: .1,
        backgroundColor: const Color(0xFF000000),
        title: const BarApp(title: 'Classes'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<AppState>().updateUnits();
        },
        child: Consumer<AppState>(
          builder: (context, value, child) => value.loading
              ? Center(
                  child: 
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: const CircularProgressIndicator(
                      // color: Color(0xFF26501E),
                      strokeWidth: 6,
                    ),
                  ),
                )
              : value.error
                  ? Center(
                      child: Text(
                        value.error_message,
                        style:
                            TextStyle(color: Colors.amber),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ListView(
                        children: [

                          WeekDays(
                            selectedDay: value.today,
                            classes: value.subjects,

                          ),
                        ],
                      ),
                    ),
        ),
      ),
      // body:
      // state.isLoading()

      //     :
    );
  }
}
