import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.text,
    this.fontSize = 28,
    this.fontWeight = FontWeight.w700,
    this.color = Colors.white,
  });

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: GoogleFonts.oswald(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        textStyle: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
