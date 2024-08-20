import 'package:flutter/material.dart';

BottomNavigationBarItem bottomNavigationBarItemMethod(
  IconData icon,
  bool isSelected,
) {
  return BottomNavigationBarItem(
    label: '',
    icon: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 24),
        isSelected
            ? Image.asset('assets/images/point.png')
            : const SizedBox(height: 4),
      ],
    ),
    backgroundColor: const Color(0xffF1E0E9),
  );
}
