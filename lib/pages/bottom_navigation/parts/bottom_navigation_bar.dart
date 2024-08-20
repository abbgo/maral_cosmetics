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
        bottomNavigationBarItemMethod(Icons.home),
        bottomNavigationBarItemMethod(Icons.shopping_bag),
        bottomNavigationBarItemMethod(Icons.favorite),
        bottomNavigationBarItemMethod(Icons.person),
      ],
      currentIndex: selectedIndex,
      onTap: (value) =>
          ref.read(selectedBottomIndexProvider.notifier).state = value,
    );
  }
}
