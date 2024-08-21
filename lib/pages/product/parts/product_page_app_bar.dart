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
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: defaultLightColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(Icons.close, color: defaultColor),
            ),
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
