import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/theme.dart';

class SubTitleWidget extends StatelessWidget {
  const SubTitleWidget({
    super.key,
    required this.text,
    this.fontSize = 18,
    this.fontWeight = FontWeight.w400,
    this.color,
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
        color: color ?? CustomColors.terciary.withOpacity(.8),
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
