import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/functions/screen.dart';
import 'package:maral_cosmetics/pages/onbord/parts/onbord_indicator.dart';
import 'package:maral_cosmetics/pages/onbord/parts/onbord_next_button.dart';
import 'package:maral_cosmetics/pages/onbord/parts/onbord_one.dart';
import 'package:maral_cosmetics/pages/onbord/parts/onbord_two.dart';

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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/vector.jpg"),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Column(
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
                OnbordIndicator(pageController: pageController),
                const SizedBox(height: 50),
                OnbordNextButton(pageController: pageController),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
