import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class CommentInput extends StatelessWidget {
  const CommentInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        style: TextStyle(fontFamily: 'HeyWowRegular', color: defaultColor),
        maxLines: 4,
        cursorColor: defaultColor,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(labelText: ' Bellik '),
      ),
    );
  }
}
