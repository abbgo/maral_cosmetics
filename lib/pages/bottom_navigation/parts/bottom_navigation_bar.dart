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
      items: [
        bottomNavigationBarItemMethod(
          const Icon(Icons.travel_explore, size: 24),
        ),
        bottomNavigationBarItemMethod(
          const Icon(Icons.favorite_border, size: 24),
        ),
        bottomNavigationBarItemMethod(
          const Icon(Icons.shopping_bag_outlined, size: 24),
        ),
        bottomNavigationBarItemMethod(
          const Icon(Icons.shopping_bag_outlined, size: 24),
        ),
      ],
      currentIndex: selectedIndex,
      onTap: (value) =>
          ref.read(selectedBottomIndexProvider.notifier).state = value,
    );
  }
}
