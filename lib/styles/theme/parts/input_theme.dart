import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class AppInputTheme {
  AppInputTheme._();

  static InputDecorationTheme lightInputTheme = InputDecorationTheme(
    fillColor: Colors.white,
    filled: true,
    contentPadding: const EdgeInsets.only(top: 0, left: 20),
    enabledBorder: outlinedInputBorder(),
    focusedBorder: outlinedInputBorder(),
    border: outlinedInputBorder(),
    labelStyle: TextStyle(fontFamily: 'HeyWowRegular', color: defaultColor),
  );
}

OutlineInputBorder outlinedInputBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: defaultColor),
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  );
}
