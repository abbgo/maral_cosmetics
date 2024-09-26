import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class TitleAndTimerPart extends StatelessWidget {
  const TitleAndTimerPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: const Color(0xffFBEAF3),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Bayramcylyk mynasybetli Arzanladyslar',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: defaultColor,
              fontFamily: 'Niconne',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 7),
            decoration: BoxDecoration(
              color: defaultColor.withOpacity(.2),
              borderRadius: BorderRadius.circular(3),
            ),
            child: Text(
              '00 : 14 : 20',
              textAlign: TextAlign.center,
              style: TextStyle(color: defaultColor, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
