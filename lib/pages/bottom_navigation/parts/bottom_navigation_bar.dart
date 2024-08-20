import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/pages/bottom_navigation.dart';
import 'package:maral_cosmetics/providers/pages/bottom_navigation.dart';

class BottomNavigationBarPart extends ConsumerWidget {
  const BottomNavigationBarPart({super.key, required this.selectedIndex});

  final int selectedIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        bottomNavigationBarItemMethod(Icons.home, selectedIndex == 0),
        bottomNavigationBarItemMethod(Icons.shopping_bag, selectedIndex == 1),
        bottomNavigationBarItemMethod(Icons.favorite, selectedIndex == 2),
        bottomNavigationBarItemMethod(Icons.person, selectedIndex == 3),
      ],
      currentIndex: selectedIndex,
      onTap: (value) =>
          ref.read(selectedBottomIndexProvider.notifier).state = value,
    );
  }
}
