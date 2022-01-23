// ignore_for_file: curly_braces_in_flow_control_structures, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/provider.dart';
import 'package:timetable/Logic/week_sort.dart';
import 'package:timetable/State/appstate1.dart';
import 'package:timetable/widgets/classes_body.dart';

class WeekDays extends StatefulWidget {


  WeekDays(
      {Key? key,
      required this.selectedDay,
      required this.classes})
      : super(key: key);
  var selectedDay;
  List classes;

  @override
  _WeekDaysState createState() => _WeekDaysState();
}

class _WeekDaysState extends State<WeekDays> {
  String thisWeekDay =  DateFormat('EEEE').format(DateTime.now());
  late bool isSelected = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var val = context.read<AppState>();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: WeeKText(
                  weekday: 'Mon',
                  isSelected: val.isSelected('monday'),
                ),
                onTap: () {
                  
                    thisWeekDay = 'monday';
                    val.selected(thisWeekDay);
                 
                },
              ),
              InkWell(
                child: WeeKText(
                  weekday: 'Tue',
                  isSelected: val.isSelected('tuesday'),
                ),
                onTap: () {

                    thisWeekDay = 'tuesday';
                    val.selected(thisWeekDay);

                },
              ),
              InkWell(
                child: WeeKText(
                  weekday: 'Wed',
                  isSelected: val.isSelected('wednesday'),
                ),
                onTap: () {

                    thisWeekDay = 'wednesday';
                    val.selected(thisWeekDay);
                    // isSelected = true;

                },
              ),
              InkWell(
                child: WeeKText(
                  weekday: 'Thur',
                  isSelected: val.isSelected('thursday'),
                ),
                onTap: () {

                    thisWeekDay = 'thursday';
                    val.selected(thisWeekDay);
                    // isSelected = true;

                },
              ),
              InkWell(
                child: WeeKText(
                  weekday: 'Fri',
                  isSelected: val.isSelected('friday'),
                ),
                onTap: () {

                    thisWeekDay = 'friday';
                    val.selected(thisWeekDay);

                },
              ),
              // WeeKText(weekday: 'sat', isSelected: val.isSelected('saturday'),
              //
              // ),
              // WeeKText(weekday: 'sat', isSelected: val.isSelected('saturday'),
              //
              // ),

            ],
          ),
        ),
        for (var item in val.today)

            ClassBody(
              unit: item.subject,
              startTime: item.start,
              lecturer: item.lecturer,
              venue: item.venue,
              day: item.day,
            )
      ],
    );
  }
}

class WeeKText extends StatefulWidget {
  WeeKText({
    Key? key,
    this.weekday = '',
    required this.isSelected,
  }) : super(key: key);
  final String weekday;
  final bool isSelected;

  @override
  State<WeeKText> createState() => _WeeKTextState();
}

class _WeeKTextState extends State<WeeKText> {
  late bool Selected = false;
  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Text(
      widget.weekday.toUpperCase(),
      style: GoogleFonts.audiowide(
          fontSize: 19,
          color: widget.isSelected
              ? const Color(0xFF4789A3)
              : const Color(0xFFE8EFF0)),
    );
  }
}
