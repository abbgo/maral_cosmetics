import 'package:flutter/material.dart';

class PaymentTypeTile extends StatelessWidget {
  const PaymentTypeTile(
      {super.key, required this.paymentType, required this.value});

  final String paymentType, value;

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      value: value,
      groupValue: paymentType,
      onChanged: (value) {},
    );
  }
}
