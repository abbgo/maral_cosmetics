import 'package:flutter/material.dart';

Container imageIconMethod(String text, Color color) {
  return Container(
    padding: const EdgeInsets.all(4),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 12,
        color: Colors.white,
        fontFamily: 'HeyWowRegular',
      ),
    ),
  );
}
