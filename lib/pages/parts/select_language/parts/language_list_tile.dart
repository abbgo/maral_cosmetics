import 'package:flutter/material.dart';

class LanguageListTile extends StatelessWidget {
  const LanguageListTile({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xfff5f5f5), width: 1)),
      ),
      child: RadioListTile.adaptive(
        activeColor: const Color(0xffA16F8A),
        title: Text(
          text,
          style:
              const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.bold),
        ),
        value: null,
        groupValue: null,
        onChanged: (Null? value) {},
      ),
    );
  }
}
