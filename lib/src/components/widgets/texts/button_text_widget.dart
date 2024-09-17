import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonTextWidget extends StatelessWidget {
  const ButtonTextWidget({
    super.key,
    required this.text,
    this.fontSize = 18,
    this.fontWeight = FontWeight.w400,
    this.color = Colors.white,
  });

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.oswald(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
