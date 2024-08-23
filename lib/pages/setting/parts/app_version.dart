import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class AppVersion extends StatelessWidget {
  const AppVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/images/leaf.jpg", fit: BoxFit.cover),
          Positioned(
            bottom: 20,
            child: Text(
              'Maralcasmetics v3.7.3',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'HeyWowRegular',
                color: defaultColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
