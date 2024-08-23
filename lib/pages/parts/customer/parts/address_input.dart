import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class AddressInput extends StatelessWidget {
  const AddressInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: TextFormField(
        style: TextStyle(fontFamily: 'HeyWowRegular', color: defaultColor),
        maxLines: 4,
        cursorColor: defaultColor,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(labelText: ' Salgynyz '),
      ),
    );
  }
}
