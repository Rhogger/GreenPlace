import 'package:flutter/material.dart';

class AddButtonWidget extends StatelessWidget {
  const AddButtonWidget({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.iconColor,
    required this.iconSize,
  });

  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color iconColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: iconSize,
      icon: const Icon(Icons.add_rounded),
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          backgroundColor,
        ),
        iconColor: WidgetStatePropertyAll(
          iconColor,
        ),
      ),
    );
  }
}
