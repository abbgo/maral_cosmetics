import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/models/product.dart';
import 'package:maral_cosmetics/pages/login.dart';
import 'package:maral_cosmetics/providers/api/favorite.dart';
import 'package:maral_cosmetics/providers/api/product.dart';
import 'package:maral_cosmetics/providers/local_storadge.dart';
import 'package:maral_cosmetics/services/api/favorite.dart';

class ProductFavoriteButton extends ConsumerWidget {
  const ProductFavoriteButton({
    super.key,
    required this.right,
    required this.top,
    required this.product,
  });

  final double right, top;
  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String accessToken = ref.watch(accessTokenProvider);

    return Positioned(
      right: right,
      top: top,
      child: GestureDetector(
        onTap: () async {
          if (accessToken.isEmpty) {
            Navigator.push(
              context,
              CustomPageRoute(
                child: const LoginPage(),
                direction: AxisDirection.left,
              ),
            );
            return;
          }

          FavoriteParams arg = FavoriteParams(
            context: context,
            productID: product.id,
          );
          bool result = await ref.read(addOrRemoveFavoriteProvider(arg).future);
          if (result) {
            ref.invalidate(fetchProductsProvider);
          }
        },
        child: Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Icon(
            product.isLiked ? Icons.favorite : Icons.favorite_outline,
            color: const Color(0xff824D6A),
            size: 22,
          ),
        ),
      ),
    );
  }
}
