import 'dart:async';

import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _currentPage,
    );

    // Start the auto-play timer
    _startAutoPlay();
  }

  void _startAutoPlay() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < homeSliders.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 200,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: PageView.builder(
              controller: _pageController,
              pageSnapping: true,
              itemCount: homeSliders.length,
              itemBuilder: (context, index) =>
                  Image.asset(homeSliders[index], fit: BoxFit.cover),
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
            ),
          ),
          Positioned(
            right: 7,
            bottom: 5,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: homeSliders.length,
                effect: WormEffect(
                  dotColor: Colors.white,
                  dotHeight: 8,
                  dotWidth: 8,
                  activeDotColor: defaultColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
