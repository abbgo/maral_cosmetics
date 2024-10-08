import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

const outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(5)),
  borderSide: BorderSide(color: Color(0xff79747E)),
);

const errorBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(5)),
  borderSide: BorderSide(color: Color(0xffFF3C3C)),
);

const emptyTextStyle = TextStyle(fontSize: 0, height: 0);

void showInputErrorMethod(BuildContext context, String text) {
  return showTopSnackBar(
    Overlay.of(context),
    CustomSnackBar.error(
      icon: const SizedBox.shrink(),
      backgroundColor: const Color(0xffece2e8),
      message: text,
      textStyle:
          const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.bold),
    ),
  );
}
