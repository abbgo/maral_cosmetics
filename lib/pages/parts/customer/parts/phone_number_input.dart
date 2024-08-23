import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class PhoneNumberInput extends StatelessWidget {
  const PhoneNumberInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: TextFormField(
        cursorColor: defaultColor,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  ' +993 | ',
                  style: TextStyle(
                      color: defaultColor, fontFamily: 'HeyWowRegular'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
