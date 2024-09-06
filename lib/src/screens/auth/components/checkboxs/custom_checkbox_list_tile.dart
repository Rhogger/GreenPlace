import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitanda/src/config/theme.dart';

class CustomCheckboxListTile extends StatefulWidget {
  final String title;
  final String subtitle;
  // bool _existSubtitle = subtitle : true ? false;

  const CustomCheckboxListTile({
    super.key,
    required this.title,
    this.subtitle = '',
  });

  @override
  State<CustomCheckboxListTile> createState() => _CustomCheckboxListTileState();
}

class _CustomCheckboxListTileState extends State<CustomCheckboxListTile> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CheckboxListTile(
        title: Text(
          widget.title,
          style: GoogleFonts.oswald(
            fontSize: 16,
            color: CustomColors.terciary.withOpacity(.9),
          ),
        ),
        contentPadding: EdgeInsets.zero,
        activeColor: CustomColors.primary.withOpacity(.4),
        checkColor: CustomColors.terciary,
        dense: true,
        controlAffinity: ListTileControlAffinity.leading,
        subtitle: widget.subtitle.isNotEmpty
            ? Text(
                widget.subtitle,
                style: GoogleFonts.oswald(
                  fontSize: 12,
                  color: CustomColors.terciary.withOpacity(.7),
                ),
              )
            : null,
        side: BorderSide(
          color: CustomColors.terciary,
          width: 1.4,
        ),
        visualDensity: VisualDensity.standard,
        value: _isChecked,
        onChanged: (bool? isChecked) {
          setState(
            () {
              _isChecked = isChecked;
            },
          );
        },
      ),
    );
  }
}
