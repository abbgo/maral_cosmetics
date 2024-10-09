import 'package:flutter/material.dart';

class LogOutBottomSheetNoButton extends StatelessWidget {
  const LogOutBottomSheetNoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffc2a1b3),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 55),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: () => Navigator.pop(context),
      child: const Text(
        'Yok',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
