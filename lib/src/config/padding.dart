import 'package:flutter/material.dart';

var paddingApp = 30.0;
var paddingAll = EdgeInsets.all(paddingApp);
var paddingVertical = EdgeInsets.symmetric(vertical: paddingApp);
var paddingHorizontal = EdgeInsets.symmetric(horizontal: paddingApp);

var paddingLessTop = EdgeInsets.only(
  right: paddingApp,
  left: paddingApp,
  bottom: paddingApp,
);

var paddingLessBottom = EdgeInsets.only(
  top: paddingApp,
  right: paddingApp,
  left: paddingApp,
);

var paddingLessRight = EdgeInsets.only(
  top: paddingApp,
  left: paddingApp,
  bottom: paddingApp,
);

var paddingLessLeft = EdgeInsets.only(
  top: paddingApp,
  right: paddingApp,
  bottom: paddingApp,
);
