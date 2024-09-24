import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/config/theme.dart';
import 'src/routes/app_pages.dart';
import 'src/routes/routes.dart';
import 'src/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      initialRoute: Routes.splashRoute,
      getPages: AppPages.pages,
    );
  }
}
