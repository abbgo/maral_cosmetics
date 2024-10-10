import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

AppBar basketPageAppBar() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Menin sebedim'),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: defaultLightColor,
          ),
          child: Icon(Icons.delete_sweep, color: defaultColor),
        ),
      ],
    ),
    centerTitle: false,
    leading: null,
  );
}
