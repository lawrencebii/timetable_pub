// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
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
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          height: safeHeight / 5 + 10,
          width: safeWidth,
          // color: Color(0xFF3D3D3D),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      width: 120,
                      height: safeHeight / 5 + 30,
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          // Text(
                          //   startTime,
                          //   style: TextStyle(
                          //       color: Color(0xffffffff),
                          //       fontSize: 19,
                          //       fontWeight: FontWeight.w400),
                          // ),
                          DefaultTextStyle(
                            // style: const TextStyle(
                            //     color: Color(0xFFFFFFFF),
                            //     fontSize: 18,
                            //     fontWeight: FontWeight.w400),
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 18,
                                  letterSpacing: .5),
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                // WavyAnimatedText(
                                //     startTime + 'Hrs'),
                                WavyAnimatedText(DateFormat
                                        .jm()
                                    .format(DateFormat(
                                            "hh:mm:ss")
                                        .parse(
                                            startTime))),
                              ],
                              isRepeatingAnimation: false,
                              onTap: () {},
                            ),
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.only(
                                left: 2,
                              ),
                              child: CheckLine()),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          unit,
                          curve: Curves.bounceInOut,
                          textStyle: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Color(0xFFFFFFFF),
                                overflow:
                                    TextOverflow.ellipsis,
                                fontSize: 18,
                                letterSpacing: .5),
                          ),

                          // textStyle: const TextStyle(
                          //     color: Color(0xFFFFFFFF),
                          //     fontSize: 18,

                          //     fontWeight: FontWeight.w400),
                          speed: const Duration(
                              milliseconds: 100),
                        ),
                      ],
                      totalRepeatCount: 2,
                      pause: const Duration(
                          milliseconds: 1000),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    ),
                    const SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    RowIconText(
                        ic: Icons.location_on_outlined,
                        title: venue),
                    const SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    RowIconText(
                        ic: Icons.person, title: lecturer),
                    const SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    RowIconText(
                        ic: Icons.view_day, title: day),
                  ],
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}

class CheckLine extends StatelessWidget {
  const CheckLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              border:
                  Border.all(width: 1, color: greenColor),
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
    );
  }
}
