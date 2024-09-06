import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IrrigationTab extends StatelessWidget {
  const IrrigationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Rega de hoje',
          style: GoogleFonts.oswald(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
