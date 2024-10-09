import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maral_cosmetics/styles/decorations.dart';
import 'package:maral_cosmetics/styles/text_styles.dart';

class PhoneInput extends StatelessWidget {
  const PhoneInput({super.key, required this.phoneCtrl});

  final TextEditingController phoneCtrl;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: phoneCtrl,
      maxLength: 8,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
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
        counterText: '',
        labelText: ' Telefon belgi ',
        labelStyle: const TextStyle(fontFamily: 'Inter', color: Colors.black),
        prefix: const Text.rich(
          TextSpan(
            text: '+993',
            style: TextStyle(fontWeight: FontWeight.normal),
            children: [
              TextSpan(
                text: ' | ',
                style: TextStyle(color: Color(0xff9D9D9D)),
              ),
            ],
          ),
        ),
      ),
      validator: (value) {
        if (value == null || value.length < 8) {
          return '';
        }
        return null;
      },
    );
  }
}
