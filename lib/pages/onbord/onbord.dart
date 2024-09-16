import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/onbord/parts/onbord_indicator.dart';
import 'package:maral_cosmetics/pages/onbord/parts/onbord_one.dart';
import 'package:maral_cosmetics/pages/onbord/parts/onbord_two.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class OnbordPage extends StatefulWidget {
  const OnbordPage({super.key});

  @override
  State<OnbordPage> createState() => _OnbordPageState();
}

class _OnbordPageState extends State<OnbordPage> {
  PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              children: [
                OnbordOne(pageController: pageController),
                const OnbordTwo(),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OnbordIndicator(color: defaultColor),
                  const SizedBox(width: 5),
                  OnbordIndicator(color: defaultLightColor),
                ],
              ),
              const SizedBox(height: 53),
              GestureDetector(
                onTap: () => pageController.animateToPage(
                  1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                ),
                child: CircleAvatar(
                  radius: 34,
                  backgroundColor: defaultColor,
                  child:
                      Icon(Icons.adaptive.arrow_forward, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
