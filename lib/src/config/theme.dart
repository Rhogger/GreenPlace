import 'package:flutter/material.dart';

Map<int, Color> _primarySwatchOpacity = {
  50: const Color.fromRGBO(34, 77, 44, .1),
  100: const Color.fromRGBO(34, 77, 44, .2),
  200: const Color.fromRGBO(34, 77, 44, .3),
  300: const Color.fromRGBO(34, 77, 44, .4),
  400: const Color.fromRGBO(34, 77, 44, .5),
  500: const Color.fromRGBO(34, 77, 44, .6),
  600: const Color.fromRGBO(34, 77, 44, .7),
  700: const Color.fromRGBO(34, 77, 44, .8),
  800: const Color.fromRGBO(34, 77, 44, .9),
  900: const Color.fromRGBO(34, 77, 44, 1),
};

Map<int, Color> _secondarySwatchOpacity = {
  50: const Color.fromRGBO(2, 34, 9, .1),
  100: const Color.fromRGBO(2, 34, 9, .2),
  200: const Color.fromRGBO(2, 34, 9, .3),
  300: const Color.fromRGBO(2, 34, 9, .4),
  400: const Color.fromRGBO(2, 34, 9, .5),
  500: const Color.fromRGBO(2, 34, 9, .6),
  600: const Color.fromRGBO(2, 34, 9, .7),
  700: const Color.fromRGBO(2, 34, 9, .8),
  800: const Color.fromRGBO(2, 34, 9, .9),
  900: const Color.fromRGBO(2, 34, 9, 1),
};

Map<int, Color> _terciarySwatchOpacity = {
  50: const Color.fromRGBO(97, 95, 95, .1),
  100: const Color.fromRGBO(97, 95, 95, .2),
  200: const Color.fromRGBO(97, 95, 95, .3),
  300: const Color.fromRGBO(97, 95, 95, .4),
  400: const Color.fromRGBO(97, 95, 95, .5),
  500: const Color.fromRGBO(97, 95, 95, .6),
  600: const Color.fromRGBO(97, 95, 95, .7),
  700: const Color.fromRGBO(97, 95, 95, .8),
  800: const Color.fromRGBO(97, 95, 95, .9),
  900: const Color.fromRGBO(97, 95, 95, 1),
};

abstract class CustomColors {
  static Color primary = MaterialColor(0xFF224D2C, _primarySwatchOpacity);
  static Color secondary = MaterialColor(0xFF022209, _secondarySwatchOpacity);
  static Color terciary = MaterialColor(0xFF615F5F, _terciarySwatchOpacity);
}
