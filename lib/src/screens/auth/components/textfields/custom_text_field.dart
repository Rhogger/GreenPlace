import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitanda/src/config/theme.dart';

class CustomTextField extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isPassword;

  const CustomTextField(
      {super.key,
      required this.label,
      required this.icon,
      this.isPassword = false});

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
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: CustomColors.terciary.withOpacity(.6),
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: CustomColors.terciary.withOpacity(.6),
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: CustomColors.terciary,
              width: 2,
            ),
          ),
          labelText: widget.label,
          labelStyle: GoogleFonts.oswald(
            color: CustomColors.terciary.withOpacity(1),
          ),
          focusColor: CustomColors.terciary.withOpacity(.9),
          isDense: true,
          prefixIcon: Icon(
            widget.icon,
            color: CustomColors.terciary.withOpacity(.9),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                      visibility ? Icons.visibility : Icons.visibility_off),
                  color: CustomColors.terciary.withOpacity(.9),
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
