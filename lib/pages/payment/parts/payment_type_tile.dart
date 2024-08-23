import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class PaymentTypeTile extends StatelessWidget {
  const PaymentTypeTile({
    super.key,
    required this.paymentType,
    required this.value,
    required this.title,
    required this.subTitle,
  });

  final String paymentType, value, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: paymentType == value ? defaultLightColor : null,
      child: RadioListTile(
        controlAffinity: ListTileControlAffinity.trailing,
        activeColor: defaultColor,
        title: Text(
          title,
          style: TextStyle(
            color: defaultColor,
            fontFamily: 'HeyWowRegular',
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          subTitle,
          style: const TextStyle(fontFamily: 'HeyWowRegular', fontSize: 14),
        ),
        value: value,
        groupValue: paymentType,
        onChanged: (value) {},
      ),
    );
  }
}
