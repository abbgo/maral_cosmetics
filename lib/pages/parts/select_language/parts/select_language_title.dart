import 'package:flutter/material.dart';

class SelectLanguageTitle extends StatelessWidget {
  const SelectLanguageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.pop(context),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Dil',
            style: TextStyle(
                fontFamily: 'Inter', fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Icon(Icons.close),
        ],
      ),
    );
  }
}
