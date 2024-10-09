import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

BoxDecoration innerShadowBoxDecoration = BoxDecoration(
  color: defaultLightColor,
  borderRadius: BorderRadius.circular(10),
  border: Border.all(color: defaultLightColor, width: 2),
  boxShadow: const [
    BoxShadow(
      color: Colors.black26,
      spreadRadius: -10,
      blurRadius: 10,
    ),
  ],
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [defaultLightColor, Colors.white],
  ),
);

OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(5)),
  borderSide: BorderSide(color: Color(0xff79747E)),
);

OutlineInputBorder errorBorder = const OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(5)),
  borderSide: BorderSide(color: Color(0xffFF3C3C)),
);
