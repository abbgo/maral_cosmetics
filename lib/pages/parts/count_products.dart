import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/default_param.dart';
import 'package:maral_cosmetics/models/product.dart';
import 'package:maral_cosmetics/providers/api/product.dart';

class CountProducts extends ConsumerWidget {
  const CountProducts({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DefaultParams arg = const DefaultParams(page: 1, pageSize: pageSize);
    AsyncValue<ResultProduct> resultProducts =
        ref.watch(fetchProductsProvider(arg));

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text.rich(
        TextSpan(
          text: 'Harytlaryn sany: ',
          style: const TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          children: [
            resultProducts.when(
              data: (response) {
                return TextSpan(
                  text: '${response.count}',
                  style: const TextStyle(fontWeight: FontWeight.normal),
                );
              },
              error: (error, stackTrace) =>
                  const WidgetSpan(child: SizedBox.shrink()),
              loading: () => const WidgetSpan(child: SizedBox.shrink()),
            ),
          ],
        ),
      ),
    );
  }
}
