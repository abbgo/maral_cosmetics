import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/providers/pages/home.dart';
import 'package:maral_cosmetics/styles/decorations.dart';

class HomeMenusChild extends ConsumerWidget {
  const HomeMenusChild(
      {super.key, required this.text, required this.menuIndex});

  final String text;
  final int menuIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selectedHomeMenu = ref.watch(selectedHomeMenuProvider);

    return GestureDetector(
      onTap: () =>
          ref.read(selectedHomeMenuProvider.notifier).state = menuIndex,
      child: Container(
        height: 27,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        decoration: selectedHomeMenu == menuIndex
            ? innerShadowBoxDecoration
            : BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
        child: Center(
          child: Text(text, style: const TextStyle(fontSize: 14)),
        ),
      ),
    );
  }
}
