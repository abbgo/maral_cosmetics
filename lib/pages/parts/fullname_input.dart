import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/parts/inputs.dart';

class FullnameInput extends StatelessWidget {
  const FullnameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      decoration: const InputDecoration(
        errorBorder: errorBorder,
        focusedErrorBorder: errorBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        labelText: ' Ady ',
        labelStyle: TextStyle(color: Colors.black, fontFamily: 'Inter'),
      ),
    );
  }
}
