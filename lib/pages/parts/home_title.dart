import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key, required this.text, required this.onTap});

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
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
