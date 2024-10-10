import 'package:flutter/material.dart';

class ClearProductPriceButton extends StatelessWidget {
  const ClearProductPriceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Image.asset(
        'assets/images/trash.png',
        color: Colors.red,
        height: 24,
      ),
    );
  }
}
