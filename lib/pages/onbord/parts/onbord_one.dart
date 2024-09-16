import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/functions/screen.dart';

class OnbordOne extends StatelessWidget {
  const OnbordOne({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/onbord_1.png",
          width: screenProperties(context).width,
          fit: BoxFit.fitWidth,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'collection of treatments',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 10),
              Text(
                'The Ordinary is born to disallow commodity to be disguised as ingenuity. The Ordinary is "Clinical formulations with integrity".',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
