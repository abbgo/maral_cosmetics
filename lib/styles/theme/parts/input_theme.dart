import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class AppInputTheme {
  AppInputTheme._();

  static InputDecorationTheme lightInputTheme = InputDecorationTheme(
    fillColor: Colors.white,
    filled: true,
    contentPadding: const EdgeInsets.only(top: 0, left: 20),
    enabledBorder: outlinedInputBorder(),
  );
}

OutlineInputBorder outlinedInputBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: defaultColor),
    borderRadius: const BorderRadius.all(Radius.circular(20)),
  );
}
