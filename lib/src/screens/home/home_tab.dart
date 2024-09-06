import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Minhas plantas',
          style: GoogleFonts.oswald(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
