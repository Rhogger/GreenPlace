import 'package:flutter/material.dart';

void navigatePush(BuildContext context, Widget widget) =>
    Navigator.of(context).push(
      MaterialPageRoute(builder: (c) => widget),
    );

void navigatePushReplacement(BuildContext context, Widget widget) =>
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (c) => widget),
    );

void navigatePop(BuildContext context) => Navigator.of(context).pop();