import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/payment_type/parts/payment_type_tile.dart';
import 'package:maral_cosmetics/pages/parts/payment_type/parts/payment_type_title.dart';

class PaymentType extends StatelessWidget {
  const PaymentType({super.key});

  @override
  Widget build(BuildContext context) {
    String paymentType = 'cash';

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const PaymentTypeTitle(text: 'Toleg gornsui'),
        PaymentTypeTile(
          paymentType: paymentType,
          value: 'cash',
          title: 'Nagt',
          subTitle: 'Sargydy alan wagtynyz nagt hasaplasmak',
        ),
        PaymentTypeTile(
          paymentType: paymentType,
          value: 'bank_card',
          title: 'Bank karty',
          subTitle: 'Toleg terminalyndan kart arkaly hasaplasmak',
        ),
      ],
    );
  }
}
