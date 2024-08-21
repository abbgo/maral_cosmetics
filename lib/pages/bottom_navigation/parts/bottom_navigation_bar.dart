import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/pages/bottom_navigation.dart';
import 'package:maral_cosmetics/providers/pages/bottom_navigation.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class BottomNavigationBarPart extends ConsumerWidget {
  const BottomNavigationBarPart({super.key, required this.selectedIndex});

  final int selectedIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(color: defaultColor),
      unselectedIconTheme: IconThemeData(color: defaultColor),
      items: [
        bottomNavigationBarItemMethod(Icons.home_outlined, selectedIndex == 0),
        bottomNavigationBarItemMethod(
            Icons.shopping_bag_outlined, selectedIndex == 1),
        bottomNavigationBarItemMethod(
            Icons.favorite_outline, selectedIndex == 2),
        bottomNavigationBarItemMethod(Icons.person_outline, selectedIndex == 3),
      ],
      currentIndex: selectedIndex,
      onTap: (value) =>
          ref.read(selectedBottomIndexProvider.notifier).state = value,
    );
  }
}
