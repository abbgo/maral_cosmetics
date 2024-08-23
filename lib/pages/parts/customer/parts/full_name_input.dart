import 'package:flutter/material.dart';

class FullNameInput extends StatelessWidget {
  const FullNameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(labelText: ' Doly Adynyz '),
      ),
    );
  }
}
