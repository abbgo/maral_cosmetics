import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/payment/parts/payment_type_title.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class PaymentType extends StatelessWidget {
  const PaymentType({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const PaymentTypeTitle(),
        RadioListTile(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
