import 'package:flutter/material.dart';

class TopWidgetOfBottomNavigation extends StatelessWidget {
  const TopWidgetOfBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: const Color(0XFFD1D1D1),
      ),
    );
  }
}
