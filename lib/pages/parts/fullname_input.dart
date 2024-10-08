import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/decorations.dart';
import 'package:maral_cosmetics/styles/text_styles.dart';

class FullnameInput extends StatelessWidget {
  const FullnameInput({super.key, required this.fullNameCtrl});

  final TextEditingController fullNameCtrl;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: fullNameCtrl,
      cursorColor: Colors.black,
      style: const TextStyle(fontFamily: 'Inter'),
      decoration: InputDecoration(
        errorBorder: errorBorder,
        focusedErrorBorder: errorBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        errorStyle: emptyTextStyle,
        helperStyle: emptyTextStyle,
        helperText: '',
        labelText: ' Ady ',
        labelStyle: const TextStyle(color: Colors.black, fontFamily: 'Inter'),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '';
        }
        return null;
      },
    );
  }
}
