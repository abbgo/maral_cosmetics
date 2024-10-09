import 'package:flutter/material.dart';

class LogOutBottomSheetYesButton extends StatelessWidget {
  const LogOutBottomSheetYesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff824D6A),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 55),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: () {},
      child: const Text(
        'Hawa',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
