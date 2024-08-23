import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class PhoneNumberInput extends StatelessWidget {
  const PhoneNumberInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        cursorColor: defaultColor,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(labelText: ' Doly Adynyz '),
      ),
    );
  }
}
