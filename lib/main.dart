import 'package:flutter/material.dart';
import 'package:kitanda/src/config/theme.dart';
import 'package:kitanda/src/screens/auth/screens/sign_in_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greenplace',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: CustomColors.primary,
        scaffoldBackgroundColor: CustomColors.secondary,
        textTheme: GoogleFonts.oswaldTextTheme(Theme.of(context).textTheme),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(CustomColors.primary),
            textStyle: WidgetStateProperty.all(
              const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: CustomColors.terciary.withOpacity(.5),
          selectionHandleColor: CustomColors.primary,
          cursorColor: CustomColors.primary,
        ),
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: CustomColors.terciary.withOpacity(1),
              width: 2,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: CustomColors.terciary.withOpacity(.6),
              width: 2,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
          ),
        ),
        useMaterial3: true,
      ),
      home: const SignInScreen(),
    );
  }
}
