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
        Text(
          isSelected ? '.' : '',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ],
    ),
    backgroundColor: const Color(0xffF1E0E9),
  );
}
