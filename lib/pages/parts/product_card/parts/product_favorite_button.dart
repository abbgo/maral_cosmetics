import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/login.dart';
import 'package:maral_cosmetics/providers/local_storadge.dart';

class ProductFavoriteButton extends ConsumerWidget {
  const ProductFavoriteButton(
      {super.key, required this.right, required this.top});

  final double right, top;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String refreshToken = ref.watch(refreshTokenProvider);

    return Positioned(
      right: right,
      top: top,
      child: GestureDetector(
        onTap: () {
          if (refreshToken.isEmpty) {
            Navigator.push(
              context,
              CustomPageRoute(
                child: const LoginPage(),
                direction: AxisDirection.left,
              ),
            );
            return;
          }
        },
        child: Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Icon(
            Icons.favorite_outline,
            color: Color(0xff824D6A),
            size: 22,
          ),
        ),
      ),
    );
  }
}
