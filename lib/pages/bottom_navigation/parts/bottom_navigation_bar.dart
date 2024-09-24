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
      selectedLabelStyle: const TextStyle(
        fontFamily: 'HeyWowRegular',
        fontSize: 12,
      ),
      unselectedLabelStyle: const TextStyle(
        fontFamily: 'HeyWowRegular',
        fontSize: 12,
      ),
      selectedItemColor: const Color(0xff82516C),
      unselectedItemColor: const Color(0xff82516C),
      items: [
        bottomNavigationBarItemMethod(
          selectedIndex == 0 ? Icons.home : Icons.home_outlined,
          'Home',
          selectedIndex == 0,
        ),
        bottomNavigationBarItemMethod(
          selectedIndex == 1 ? Icons.shopping_bag : Icons.shopping_bag_outlined,
          'Shop',
          selectedIndex == 1,
        ),
        bottomNavigationBarItemMethod(
          selectedIndex == 2 ? Icons.favorite : Icons.favorite_outline,
          'Favorites',
          selectedIndex == 2,
        ),
        bottomNavigationBarItemMethod(
          selectedIndex == 3 ? Icons.person : Icons.person_outline,
          'Profile',
          selectedIndex == 3,
        ),
      ],
      currentIndex: selectedIndex,
      onTap: (value) =>
          ref.read(selectedBottomIndexProvider.notifier).state = value,
    );
  }
}
