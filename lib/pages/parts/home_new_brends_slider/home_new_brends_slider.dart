import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class HomeNewBrendsSlider extends StatelessWidget {
  const HomeNewBrendsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          onTap: () {},
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('In taze gosulanlar', style: TextStyle(fontSize: 20)),
              const SizedBox(width: 10),
              Icon(Icons.chevron_right, color: defaultColor),
            ],
          ),
        ),
      ],
    );
  }
}
