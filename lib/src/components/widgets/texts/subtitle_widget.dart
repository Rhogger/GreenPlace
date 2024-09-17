import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/theme.dart';

class SubTitleWidget extends StatelessWidget {
  const SubTitleWidget({
    super.key,
    required this.text,
    this.fontSize = 22,
    this.fontWeight = FontWeight.w500,
    this.color,
  });

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: GoogleFonts.oswald(
        color: color ?? CustomColors.terciary.withOpacity(.8),
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
