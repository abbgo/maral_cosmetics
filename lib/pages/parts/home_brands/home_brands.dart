import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/brand.dart';
import 'package:maral_cosmetics/models/default_param.dart';
import 'package:maral_cosmetics/pages/parts/home_brands/parts/brand_image.dart';
import 'package:maral_cosmetics/pages/parts/home_title.dart';
import 'package:maral_cosmetics/providers/api/brand.dart';
import 'package:maral_cosmetics/providers/pages/brands.dart';

class HomeBrands extends ConsumerWidget {
  const HomeBrands({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool loading = ref.watch(loadBrandProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        HomeTitle(text: 'Hyzmatdas brendler', onTap: () {}),
        SizedBox(
          height: 80,
          child: Stack(
            children: [
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final page = index ~/ pageSize + 1;
                  final indexInPage = index % pageSize;

                  DefaultParams arg =
                      DefaultParams(page: page, pageSize: pageSize);

                  final AsyncValue<ResultBrands> resultBrands =
                      ref.watch(fetchBrandsProvider(arg));

                  return resultBrands.when(
                    data: (response) {
                      if (response.error != '') {
                        return null;
                      }
                      if (indexInPage >= response.brands!.length) {
                        return null;
                      }

                      bool isLast = page == response.pageCount &&
                          (indexInPage + 1) == response.brands!.length;

                      Brand brand = response.brands![indexInPage];
                      return BrandImage(
                        brand: brand,
                        isFirst: index == 0,
                        isLast: isLast,
                      );
                    },
                    error: (error, stackTrace) => errorMethod(error),
                    loading: () {
                      if (!loading) {
                        Future.delayed(
                          const Duration(),
                          () =>
                              ref.read(loadBrandProvider.notifier).state = true,
                        );
                      }
                      return null;
                    },
                  );
                },
              ),
              loading ? loadWidget : const SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
