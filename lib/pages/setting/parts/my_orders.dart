import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: defaultLightColor,
      child: ListTile(
        leading: Icon(Icons.local_mall_outlined, color: defaultColor),
        title: Text(
          'Menin sargytlarym',
          style: TextStyle(color: defaultColor, fontFamily: 'HeyWowRegular'),
        ),
      ),
    );
  }
}
