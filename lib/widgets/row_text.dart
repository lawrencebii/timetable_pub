import 'package:flutter/material.dart';
import 'package:timetable/utilities/dims.dart';

class RowIconText extends StatelessWidget {
  const RowIconText({
    Key? key,
    required this.ic,
    required this.title,
  }) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final ic;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Icon(
          ic,
          size: 20,
          color: greenColor,
        ),
      ),
      Text(title,
          style: const TextStyle(
              color: Color(0xFFACAAAA),
              fontSize: 13,
              fontWeight: FontWeight.w400))
    ]);
  }
}
