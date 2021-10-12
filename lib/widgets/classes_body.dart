// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:timetable/utilities/dims.dart';
import 'package:timetable/widgets/row_text.dart';

class ClassBody extends StatelessWidget {
  const ClassBody({
    Key? key,
    this.unit = '',
    this.startTime = '',
    this.venue = '',
    this.lecturer = '',
    this.day = '',
  }) : super(key: key);
  final String unit;
  final String startTime;
  final String venue;
  final String lecturer;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: safeHeight / 5,
      width: safeWidth,
      // color: Color(0xFF3D3D3D),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SizedBox(
                  width: 110,
                  height: safeHeight / 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        startTime,
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 19,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: greenColor),
                                  color: Color(0xFF1B1B1B),
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.check,
                                color: greenColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: safeHeight / 8 * 0.75,
                                width: 1,
                                color: Color(0xFF6B6B6B),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  unit,
                  style: const TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 5,
                  width: 5,
                ),
                RowIconText(
                    ic: Icons.location_on_outlined, title: venue),
                const SizedBox(
                  height: 5,
                  width: 5,
                ),
                RowIconText(ic: Icons.person, title: lecturer),
                const SizedBox(
                  height: 5,
                  width: 5,
                ),
                RowIconText(ic: Icons.view_day, title: day),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
