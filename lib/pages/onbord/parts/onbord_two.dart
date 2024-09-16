import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/functions/screen.dart';
import 'package:maral_cosmetics/pages/onbord/parts/onbord_indicator.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class OnbordTwo extends StatelessWidget {
  const OnbordTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/onbord_2.png",
          width: screenProperties(context).width,
          fit: BoxFit.fitWidth,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            children: [
              const Text(
                'collection of treatments',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 10),
              const Text(
                'The Ordinary is born to disallow commodity to be disguised as ingenuity. The Ordinary is "Clinical formulations with integrity".',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OnbordIndicator(color: defaultColor),
                  const SizedBox(width: 5),
                  OnbordIndicator(color: defaultLightColor),
                ],
              ),
              const SizedBox(height: 53),
              CircleAvatar(
                radius: 34,
                backgroundColor: defaultColor,
                child: Icon(Icons.adaptive.arrow_forward, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
