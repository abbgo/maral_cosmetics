import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/login.dart';
import 'package:maral_cosmetics/providers/local_storadge.dart';

class ProductOrderButton extends ConsumerWidget {
  const ProductOrderButton({super.key, this.buttonWidth, this.buttonHeight});

  final double? buttonWidth, buttonHeight;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String refreshToken = ref.watch(refreshTokenProvider);

    return SizedBox(
      height: buttonHeight ?? 30,
      width: buttonWidth ?? double.maxFinite,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffA16F8A),
        ),
        onPressed: () {
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
        child: const Icon(
          Icons.local_mall_outlined,
          size: 18,
        ),
      ),
    );
  }
}
