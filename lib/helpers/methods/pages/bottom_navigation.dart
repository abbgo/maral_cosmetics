import 'package:flutter/material.dart';

BottomNavigationBarItem bottomNavigationBarItemMethod(
    IconData icon, String text, bool isSelected) {
  return BottomNavigationBarItem(
    label: text,
    icon: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xfff6e4ed) : null,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Icon(icon, size: 24),
    ),
    backgroundColor: const Color(0xffFFF1F8),
  );
}
