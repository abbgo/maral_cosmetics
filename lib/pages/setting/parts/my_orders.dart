import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/providers/local_storadge.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:maral_cosmetics/styles/style_borders.dart';

class MyOrders extends ConsumerWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String accessToken = ref.watch(accessTokenProvider);

    return accessToken.isEmpty
        ? const SizedBox.shrink()
        : ListTile(
            shape: bottomBorder,
            leading: Icon(Icons.local_mall_outlined, color: defaultColor),
            title: Text(
              'Menin sargytlarym',
              style:
                  TextStyle(color: defaultColor, fontFamily: 'HeyWowRegular'),
            ),
          );
  }
}
