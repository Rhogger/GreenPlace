import 'package:flutter/material.dart';

import '../../config/theme.dart';

class ButtonProps {
/* -------------------- Styles -------------------- */
  static ButtonStyle? outlinedRoundedElevated(
          {double? borderRadius, Color? color}) =>
      ElevatedButton.styleFrom(
        backgroundColor: color ?? Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 18),
          side: BorderSide(
            strokeAlign: BorderSide.strokeAlignOutside,
            color: CustomColors.primary,
            width: 2,
          ),
        ),
      );

  static ButtonStyle? filledRoundedElevated({double? borderRadius}) =>
      ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 18),
        ),
      );
}
