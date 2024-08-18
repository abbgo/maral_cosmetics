import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class HomeNewBrendsSliderTitle extends StatelessWidget {
  const HomeNewBrendsSliderTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text, style: const TextStyle(fontSize: 20)),
          const SizedBox(width: 10),
          Icon(Icons.chevron_right, color: defaultColor),
        ],
      ),
    );
  }
}
