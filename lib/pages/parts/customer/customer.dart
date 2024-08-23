import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/customer/parts/full_name_input.dart';
import 'package:maral_cosmetics/pages/parts/payment_type/parts/payment_type_title.dart';

class CustomerPart extends StatelessWidget {
  const CustomerPart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        PaymentTypeTitle(text: 'Satyn alyjy'),
        FullNameInput(),
      ],
    );
  }
}
