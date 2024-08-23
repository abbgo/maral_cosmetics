import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

OutlineInputBorder inputBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: defaultColor),
    borderRadius: const BorderRadius.all(Radius.circular(8)),
  );
}
