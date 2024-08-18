import 'package:flutter/material.dart';
import 'package:maral_cosmetics/static_variables/static_variables.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: PageView.builder(
          controller: _pageController,
          pageSnapping: true,
          itemCount: homeSliders.length,
          itemBuilder: (context, index) =>
              Image.asset(homeSliders[index], fit: BoxFit.cover),
        ),
      ),
    );
  }
}
