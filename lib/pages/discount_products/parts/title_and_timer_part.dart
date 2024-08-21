import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class TitleAndTimerPart extends StatelessWidget {
  const TitleAndTimerPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Bayramcylyk mynasybetli Arzanladyslar',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: defaultColor,
                fontFamily: 'Niconne',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
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
