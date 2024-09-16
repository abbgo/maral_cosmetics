import 'package:flutter/material.dart';
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
      body: PageView(
        controller: pageController,
        children: const [
          OnbordOne(),
          OnbordTwo(),
        ],
      ),
    );
  }
}
