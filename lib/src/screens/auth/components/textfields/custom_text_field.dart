import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../components/styles/borders.dart';
import '../../../../config/theme.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.icon,
    this.isPassword = false,
    this.color,
  });

  final IconData icon;
  final String label;
  final bool isPassword;
  final Color? color;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool visibility = false;

  @override
  void initState() {
    super.initState();

    visibility = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: visibility,
        decoration: InputDecoration(
          border: BorderProps.outlined(),
          enabledBorder: BorderProps.outlined(),
          focusedBorder: BorderProps.outlined(),
          labelText: widget.label,
          labelStyle: GoogleFonts.oswald(
            color: CustomColors.terciary.withOpacity(1),
          ),
          focusColor: widget.color ?? CustomColors.terciary.withOpacity(.9),
          isDense: true,
          prefixIcon: Icon(
            widget.icon,
            color: widget.color ?? CustomColors.terciary.withOpacity(.9),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                      visibility ? Icons.visibility : Icons.visibility_off),
                  color: widget.color ?? CustomColors.terciary.withOpacity(.9),
                  onPressed: () {
                    setState(
                      () {
                        visibility = !visibility;
                      },
                    );
                  },
                )
              : null,
        ),
      ),
    );
  }
}
