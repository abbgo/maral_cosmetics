import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/bottom_navigation/bottom_navigation.dart';
import 'package:maral_cosmetics/providers/local_storadge.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class OnbordNextButton extends ConsumerWidget {
  const OnbordNextButton({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        if (pageController.page == 0) {
          pageController.animateToPage(
            1,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
          return;
        }

        ref.read(isFirstTimeProvider.notifier).update(false);
        Navigator.pushReplacement(
          context,
          CustomPageRoute(
            child: const BottomNavigationPage(),
            direction: AxisDirection.left,
          ),
        );
      },
      child: CircleAvatar(
        radius: 34,
        backgroundColor: defaultColor,
        child: Icon(Icons.adaptive.arrow_forward, color: Colors.white),
      ),
    );
  }
}
