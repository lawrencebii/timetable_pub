// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, curly_braces_in_flow_control_structures
//
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:timetable/Logic/week_sort.dart';
// import 'package:timetable/Models/class_model.dart';
// import 'package:timetable/Models/class_response_model.dart';
// import 'package:timetable/utilities/api_helper.dart';
// import 'package:timetable/utilities/dims.dart';
// import 'package:timetable/widgets/appbar.dart';
// import 'package:timetable/widgets/classes_body.dart';
// import 'package:timetable/widgets/row_text.dart';
// import 'package:http/http.dart' as http;
// import 'package:timetable/widgets/week_days.dart';
//
// class TheClasses extends StatefulWidget {
//   const TheClasses({Key? key}) : super(key: key);
//
//   @override
//   _TheClassesState createState() => _TheClassesState();
// }
//
// class _TheClassesState extends State<TheClasses> {
//   late Future<ClassResponseModel> units;
//
//   SortClasses _sort = SortClasses();
//   ApiHelper _helper = ApiHelper();
//   String text = DateFormat('EEEE').format(DateTime.now());
//
//   get value => null;
//
//   @override
//   void initState() {
//     // _sort.addDay(text);
//     super.initState();
//     units = _helper.fetchUnits();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         backgroundColor: const Color(0xFF0F0F0F),
//         appBar: AppBar(
//           elevation: .1,
//           backgroundColor: const Color(0xFF000000),
//           title: const BarApp(title: 'Classes'),
//         ),
//         body: FutureBuilder<ClassResponseModel>(
//           future: units,
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return Padding(
//                 padding: const EdgeInsets.all(2.0),
//                 child: ListView(
//                   children: [
//                     // AppBar(
//                     //   backgroundColor:
//                     //       const Color(0xFF000000),
//                     //   title: const BarApp(title: 'Classes'),
//                     // ),
//                     WeekDays(
//
//                       selectedDay: text,
//                       classes: snapshot.data!.timetable,
//                     ),
//
//                   ],
//                 ),
//               );
//             } else if (snapshot.hasError) {
//               return Text(
//                 'Oops!!\nPlease check your internet connectivity and try again',
//                 style: TextStyle(
//                     color: Color(0xff9a4b38),
//                     fontSize: 25,
//                     fontStyle: FontStyle.italic),
//               );
//             }
//             return Center(
//               child: SizedBox(
//                 height: 50,
//                 width: 100,
//                 child: const CircularProgressIndicator(
//                   color: Color(0xFF26501E),
//                   strokeWidth: 6,
//                 ),
//               ),
//             );
//           },
//         ));
//   }
// }
