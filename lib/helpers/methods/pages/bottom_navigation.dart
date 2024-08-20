import 'package:flutter/material.dart';

BottomNavigationBarItem bottomNavigationBarItemMethod(IconData icon) {
  return BottomNavigationBarItem(
    icon: Icon(icon, size: 24),
    label: 'Salam',
    backgroundColor: const Color(0xffF1E0E9),
  );
}
