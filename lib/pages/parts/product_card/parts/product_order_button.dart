import 'package:flutter/material.dart';

class ProductOrderButton extends StatelessWidget {
  const ProductOrderButton({super.key, this.buttonWidth, this.buttonHeight});

  final double? buttonWidth, buttonHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight ?? 30,
      width: buttonWidth ?? double.maxFinite,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffA16F8A),
        ),
        onPressed: () {},
        child: const Icon(
          Icons.local_mall_outlined,
          size: 18,
        ),
      ),
    );
  }
}
