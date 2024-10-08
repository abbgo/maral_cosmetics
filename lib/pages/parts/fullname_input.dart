import 'package:flutter/material.dart';

class FullnameInput extends StatelessWidget {
  const FullnameInput({super.key});

  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(color: Color(0xff79747E)),
    );

    return TextFormField(
      cursorColor: Colors.black,
      decoration: const InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        labelText: ' Ady ',
        labelStyle: TextStyle(color: Colors.black, fontFamily: 'Inter'),
      ),
    );
  }
}
