// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:timetable/utilities/dims.dart';
import 'package:timetable/widgets/row_text.dart';

class HomeworkBody extends StatefulWidget {
  const HomeworkBody({
    Key? key,
    this.homeTitle = '',
    this.homeworkDay = '',
  }) : super(key: key);
  final String homeTitle;
  final String homeworkDay;

  @override
  State<HomeworkBody> createState() => _HomeworkBodyState();
}

class _HomeworkBodyState extends State<HomeworkBody> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: safeHeight / 10,
      width: safeWidth,
      decoration: BoxDecoration(
          color: const Color(0xFF363535),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xFF000000))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.homeTitle,
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              ),
              RowIconText(
                  ic: Icons.timelapse, title: widget.homeworkDay)
            ],
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isChecked = !isChecked;
              });
            },
            child: Icon(
              
              isChecked
                  ? Icons.check_circle_outline_rounded
                  : Icons.radio_button_off_sharp,
              size: 40,
              color: greenColor,
            
            ),
          ),
        ],
      ),
    );
  }
}
