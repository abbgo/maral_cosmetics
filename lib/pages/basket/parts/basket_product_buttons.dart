import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class BasketProductButtons extends StatelessWidget {
  const BasketProductButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.remove, color: defaultColor),
            ),
            Text(
              '10',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'HeyWowRegular',
                color: defaultColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add, color: defaultColor),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: const Color(0xffFFCBCC),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Icon(Icons.close, color: Colors.red),
        ),
      ],
    );
  }
}
