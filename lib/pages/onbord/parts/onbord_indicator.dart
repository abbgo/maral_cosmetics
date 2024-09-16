import 'package:flutter/material.dart';

class OnbordIndicator extends StatelessWidget {
  const OnbordIndicator({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22,
      height: 4,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(40),
      ),
    );
  }
}
