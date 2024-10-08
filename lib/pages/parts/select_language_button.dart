import 'package:flutter/material.dart';

class SelectLanguageButton extends StatelessWidget {
  const SelectLanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.language, color: Color(0xff9D9D9D)),
          SizedBox(width: 10),
          Text(
            'Dil saylan',
            style: TextStyle(color: Color(0xff9D9D9D), fontFamily: 'Inter'),
          ),
        ],
      ),
    );
  }
}
