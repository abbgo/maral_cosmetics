import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/parts/inputs.dart';

class FullnameInput extends StatelessWidget {
  const FullnameInput({super.key, required this.fullNameCtrl});

  final TextEditingController fullNameCtrl;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: fullNameCtrl,
      cursorColor: Colors.black,
      decoration: const InputDecoration(
        errorBorder: errorBorder,
        focusedErrorBorder: errorBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        labelText: ' Ady ',
        labelStyle: TextStyle(color: Colors.black, fontFamily: 'Inter'),
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
