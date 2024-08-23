import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class PaymentTypeTitle extends StatelessWidget {
  const PaymentTypeTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          const Text(
            '*',
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
          const SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(
              fontFamily: 'HeyWowRegular',
              color: defaultColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 10),
          const Icon(Icons.error_outline, size: 16),
        ],
      ),
    );
  }
}
