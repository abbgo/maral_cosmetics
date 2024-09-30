import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/providers/pages/home.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:maral_cosmetics/styles/decorations.dart';

class HomeMenusChild extends ConsumerWidget {
  const HomeMenusChild({
    super.key,
    required this.text,
    required this.menuIndex,
    required this.menuKey,
    required this.scrollToItem,
    required this.isLast,
    required this.pageController,
  });

  final String text;
  final int menuIndex;
  final GlobalKey menuKey;
  final Function(int index) scrollToItem;
  final bool isLast;
  final PageController pageController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selectedHomeMenu = ref.watch(selectedHomeMenuProvider);
    bool isActiveMenu = selectedHomeMenu == menuIndex;

    return GestureDetector(
      onTap: () {
        ref.read(selectedHomeMenuProvider.notifier).state = menuIndex;
        pageController.animateToPage(
          menuIndex,
          duration: const Duration(milliseconds: 300),
          curve: Curves.linear,
        );
        scrollToItem(menuIndex);
      },
      child: Container(
        key: menuKey,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        margin: EdgeInsets.only(
          left: menuIndex == 0 ? 10 : 0,
          right: isLast ? 10 : 0,
        ),
        decoration: isActiveMenu
            ? innerShadowBoxDecoration
            : BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 14, color: isActiveMenu ? defaultColor : null),
          ),
        ),
      ),
    );
  }
}
