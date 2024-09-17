import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/functions/screen.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/bottom_navigation/bottom_navigation.dart';
import 'package:maral_cosmetics/pages/onbord/parts/onbord_one.dart';
import 'package:maral_cosmetics/pages/onbord/parts/onbord_two.dart';
import 'package:maral_cosmetics/providers/local_storadge.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
          SizedBox(
            height: screenProperties(context).height * .8,
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
              SmoothPageIndicator(
                controller: pageController,
                count: 2,
                effect: CustomizableEffect(
                  dotDecoration: DotDecoration(
                    borderRadius: BorderRadius.circular(40),
                    width: 22,
                    height: 4,
                    color: defaultLightColor,
                  ),
                  activeDotDecoration: DotDecoration(
                    borderRadius: BorderRadius.circular(40),
                    width: 22,
                    height: 4,
                    color: defaultColor,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Consumer(
                builder: (context, ref, child) => GestureDetector(
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
                    child:
                        Icon(Icons.adaptive.arrow_forward, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
