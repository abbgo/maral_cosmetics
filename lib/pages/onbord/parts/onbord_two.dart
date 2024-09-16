import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/functions/screen.dart';

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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          child: Column(
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
