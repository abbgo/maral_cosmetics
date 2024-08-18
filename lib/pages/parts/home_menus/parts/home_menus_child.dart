import 'package:flutter/material.dart';

class HomeMenusChild extends StatelessWidget {
  const HomeMenusChild({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: Text(text, style: const TextStyle(fontSize: 14)),
      ),
    );
  }
}
