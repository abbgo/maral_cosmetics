import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class HomeNewBrendsSliderTitle extends StatelessWidget {
  const HomeNewBrendsSliderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('In taze gosulanlar', style: TextStyle(fontSize: 20)),
          const SizedBox(width: 10),
          Icon(Icons.chevron_right, color: defaultColor),
        ],
      ),
    );
  }
}
