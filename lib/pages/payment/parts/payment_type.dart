import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/payment/parts/payment_type_tile.dart';
import 'package:maral_cosmetics/pages/payment/parts/payment_type_title.dart';

class PaymentType extends StatelessWidget {
  const PaymentType({super.key});

  @override
  Widget build(BuildContext context) {
    String paymentType = 'cash';

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const PaymentTypeTitle(),
        PaymentTypeTile(paymentType: paymentType, value: 'cash'),
        PaymentTypeTile(paymentType: paymentType, value: 'bank_card'),
      ],
    );
  }
}
