import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/delivery_type/parts/delivery_type_tile.dart';
import 'package:maral_cosmetics/pages/parts/payment_type/parts/payment_type_title.dart';

class DeliveryType extends StatelessWidget {
  const DeliveryType({super.key});

  @override
  Widget build(BuildContext context) {
    String deliveryType = 'standart';

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const PaymentTypeTitle(text: 'Eltip bermegin gornusi'),
        DeliveryTypeTile(
          deliveryType: deliveryType,
          value: 'standart',
          title: 'Standart gornusi (10.00 man)',
        ),
        DeliveryTypeTile(
          deliveryType: deliveryType,
          value: 'myself',
          title: 'Ozum baryp aljak',
        ),
      ],
    );
  }
}
