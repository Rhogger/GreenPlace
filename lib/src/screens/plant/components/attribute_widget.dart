import 'package:flutter/material.dart';

import '../../../config/theme.dart';

class AttributeWidget extends StatelessWidget {
  const AttributeWidget({
    super.key,
    required this.icon,
    this.wave,
    this.color,
  });

  final Color? color;
  final IconData icon;
  final Widget? wave;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: () {},
        child: Ink(
          width: 72,
          height: 72,
          decoration: BoxDecoration(
            color: color ?? CustomColors.secondary.withOpacity(.25),
            borderRadius: BorderRadius.circular(60),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: wave,
              ),
              Positioned(
                bottom: 0,
                top: 0,
                left: 0,
                right: 0,
                child: Icon(
                  icon,
                  color: CustomColors.secondary,
                  size: 36,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
