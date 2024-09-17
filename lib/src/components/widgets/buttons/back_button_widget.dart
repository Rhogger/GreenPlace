import 'package:flutter/material.dart';

import '../../functions/navigate.dart';
import '../../../config/theme.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 6,
      left: 6,
      child: SafeArea(
        child: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          focusColor: CustomColors.terciary.withOpacity(.5),
          color: CustomColors.secondary,
          style: ButtonStyle(
            iconColor: WidgetStateProperty.all(
              Colors.white,
            ),
            shape: WidgetStateProperty.all(
              const CircleBorder(),
            ),
          ),
          onPressed: () {
            navigatePop(context);
          },
        ),
      ),
    );
  }
}
