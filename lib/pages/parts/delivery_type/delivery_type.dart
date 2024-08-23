import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/delivery_type/parts/delivery_type_tile.dart';
import 'package:maral_cosmetics/pages/parts/payment_type/parts/payment_type_tile.dart';
import 'package:maral_cosmetics/pages/parts/payment_type/parts/payment_type_title.dart';

class DeliveryType extends StatelessWidget {
  const DeliveryType({super.key});

  @override
  Widget build(BuildContext context) {
    String paymentType = 'cash';

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const PaymentTypeTitle(text: 'Eltip bermegin gornsui'),
        DeliveryTypeTile(
          paymentType: paymentType,
          value: 'cash',
          title: 'Nagt',
          subTitle: 'Sargydy alan wagtynyz nagt hasaplasmak',
        ),
        DeliveryTypeTile(
          paymentType: paymentType,
          value: 'bank_card',
          title: 'Bank karty',
          subTitle: 'Toleg terminalyndan kart arkaly hasaplasmak',
        ),
      ],
    );
  }
}
