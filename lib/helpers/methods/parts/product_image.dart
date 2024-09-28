import 'package:flutter/material.dart';

Container imageIconMethod(String text, Color color, double textSize) {
  return Container(
    padding: const EdgeInsets.all(4),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
      text,
      style: TextStyle(
        fontSize: textSize,
        color: Colors.white,
        fontFamily: 'HeyWowRegular',
      ),
    ),
  );
}
