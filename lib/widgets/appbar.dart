import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BarApp extends StatelessWidget {
  const BarApp({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: GoogleFonts.monoton(
            textStyle: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 18,
                letterSpacing: .5),
          ),
        ),
        const Expanded(
            child: SizedBox(
          height: 10,
          width: 10,
        )),
        const CircleAvatar(
          child: Text('B'),
          backgroundColor: Color(0xff4fa48d),
        )
      ],
    );
  }
}
