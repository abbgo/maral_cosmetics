import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class ProductPageAppBar extends StatelessWidget {
  const ProductPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios, color: defaultColor),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share_outlined, color: defaultColor),
          ),
        ],
      ),
    );
  }
}
