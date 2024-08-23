import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription(
      {super.key, required this.title, required this.description});

  final String title, description;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      iconColor: defaultColor,
      collapsedIconColor: defaultColor,
      backgroundColor: Colors.blueGrey.withOpacity(.1),
      childrenPadding: const EdgeInsets.all(20),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'HeyWowRegular',
          color: defaultColor,
        ),
      ),
      children: [
        Text(
          description,
          style: const TextStyle(fontFamily: 'HeyWowRegular'),
        )
      ],
    );
  }
}
