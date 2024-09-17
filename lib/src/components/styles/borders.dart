import 'package:flutter/material.dart';

import '../../config/theme.dart';

class BorderProps {
/* -------------------- Styles -------------------- */
  static InputBorder? outlined({Color? color, double? borderRadius}) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 16),
        borderSide: BorderSide(
          color: color ?? CustomColors.terciary.withOpacity(.6),
          width: 2,
        ),
      );
}
