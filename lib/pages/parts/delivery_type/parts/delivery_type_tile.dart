import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class DeliveryTypeTile extends StatelessWidget {
  const DeliveryTypeTile({
    super.key,
    required this.deliveryType,
    required this.value,
    required this.title,
  });

  final String deliveryType, value, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: defaultColor),
      ),
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
        value: value,
        groupValue: deliveryType,
        onChanged: (value) {},
      ),
    );
  }
}
