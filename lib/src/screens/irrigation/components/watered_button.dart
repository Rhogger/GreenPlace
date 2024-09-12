import 'package:flutter/material.dart';

class WateredButton extends StatefulWidget {
  const WateredButton({
    super.key,
  });

  @override
  State<WateredButton> createState() => _WateredButtonState();
}

class _WateredButtonState extends State<WateredButton> {
  bool _isSelected = false;

  void _toggleSelection() => setState(() => _isSelected = !_isSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _isSelected
            ? Colors.black.withOpacity(.4)
            : Colors.black.withOpacity(.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: AnimatedScale(
        scale: 1,
        duration: const Duration(
          milliseconds: 300,
        ),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: IconButton(
            key: ValueKey<bool>(_isSelected),
            onPressed: _toggleSelection,
            icon: Icon(
              _isSelected ? Icons.water_drop : Icons.water_drop_outlined,
              color: Colors.lightBlue[200],
            ),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints.expand(),
            isSelected: _isSelected,
            iconSize: 72,
            style: const ButtonStyle(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
