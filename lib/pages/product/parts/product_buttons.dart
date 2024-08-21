import 'package:flutter/material.dart';

class ProductButtons extends StatelessWidget {
  const ProductButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          size: 16,
          color: Color(0xffFFBB00),
        ),
      ],
    );
  }
}
