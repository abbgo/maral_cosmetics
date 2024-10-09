import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:maral_cosmetics/styles/style_borders.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: bottomBorder,
      leading: Icon(Icons.local_mall_outlined, color: defaultColor),
      title: Text(
        'Menin sargytlarym',
        style: TextStyle(color: defaultColor, fontFamily: 'HeyWowRegular'),
      ),
    );
  }
}
