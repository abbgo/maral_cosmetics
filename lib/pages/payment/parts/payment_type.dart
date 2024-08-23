import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class PaymentType extends StatelessWidget {
  const PaymentType({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              const Text(
                '*',
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
              const SizedBox(width: 5),
              Text(
                'Toleg gornusi',
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
        ),
      ],
    );
  }
}
