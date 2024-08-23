import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/payment_type/parts/payment_type_title.dart';

class DeliveryTime extends StatelessWidget {
  const DeliveryTime({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        PaymentTypeTitle(text: 'Eltip bermegin wagty'),
      ],
    );
  }
}
