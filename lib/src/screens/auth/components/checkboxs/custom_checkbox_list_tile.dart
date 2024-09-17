import 'package:flutter/material.dart';

import '../../../../components/widgets/texts/simple_text_widget.dart';
import '../../../../components/widgets/texts/subtitle_widget.dart';
import '../../../../config/theme.dart';

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
        title: SimpleTextWidget(
          text: widget.title,
          color: CustomColors.terciary.withOpacity(.9),
        ),
        contentPadding: EdgeInsets.zero,
        activeColor: CustomColors.primary.withOpacity(.4),
        checkColor: CustomColors.terciary,
        dense: true,
        controlAffinity: ListTileControlAffinity.leading,
        subtitle: widget.subtitle.isNotEmpty
            ? SubTitleWidget(
                text: widget.subtitle,
                fontSize: 12,
                color: CustomColors.terciary.withOpacity(.7),
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
