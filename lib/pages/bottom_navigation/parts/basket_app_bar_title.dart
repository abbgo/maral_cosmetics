import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class BasketAppBarTitle extends StatelessWidget {
  const BasketAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Menin sebedim'),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: defaultLightColor,
          ),
          child: Icon(Icons.delete_sweep, color: defaultColor),
        ),
      ],
    );
  }
}
