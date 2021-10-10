// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:timetable/utilities/dims.dart';
import 'package:timetable/widgets/row_text.dart';

class AlertBody extends StatelessWidget {
  const AlertBody({
    Key? key,
    required this.alertTitle,
    required this.alertVenue,
    required this.alertDay,
  }) : super(key: key);
  final String alertTitle;
  final String alertVenue;
  final String alertDay;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            height: safeHeight / 6,
            width: safeWidth - 20,
            decoration: BoxDecoration(
              color: const Color(0xFF2C7E55),
              borderRadius:
                  BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.end,
              children: [
                Container(
                  padding:
                      const EdgeInsets.all(8.0),
                  height: safeHeight / 6,
                  width: safeWidth - 30,
                  decoration: const BoxDecoration(
                    color: Color(0xFF222121),
                    borderRadius:
                        BorderRadius.only(
                      topRight:
                          Radius.circular(10),
                      bottomRight:
                          Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .start,
                        crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            alertTitle,
                            style: TextStyle(
                                color: Color(
                                    0xffffffff),
                                fontSize: 16,
                                fontWeight:
                                    FontWeight
                                        .w400),
                          ),
                          const SizedBox(
                            height: 5,
                            width: 10,
                          ),
                          RowIconText(
                            ic: Icons.location_on,
                            title: alertVenue,
                          ),
                          const SizedBox(
                            height: 5,
                            width: 10,
                          ),
                          RowIconText(
                            ic: Icons.event,
                            title: alertDay,
                          )
                        ],
                      ),
                      const Expanded(
                        child: SizedBox(
                          height: 5,
                          width: 10,
                        ),
                      ),
                      CircularPercentIndicator(
                        radius: safeHeight / 8.0,
                        animation: true,
                        animationDuration: 1500, 
                        lineWidth: 10.0,
                        percent: 0.58,
                        center: const Text(
                          "40 hrs\nremaining",
                          style: TextStyle(
                              color: Color(
                                  0xFFB8B5B5),
                              fontWeight:
                                  FontWeight.w400,
                              fontSize: 13.0),
                        ),
                        circularStrokeCap:
                            CircularStrokeCap
                                .butt,
                        backgroundColor:
                            Color(0xFF8A9289),
                        progressColor:
                            Color(0xFF064D06),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
