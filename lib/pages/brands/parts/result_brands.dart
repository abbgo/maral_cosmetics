import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/brand.dart';
import 'package:maral_cosmetics/models/default_param.dart';
import 'package:maral_cosmetics/pages/brands/parts/brand_card.dart';
import 'package:maral_cosmetics/pages/parts/no_result.dart';
import 'package:maral_cosmetics/providers/api/brand.dart';
import 'package:maral_cosmetics/providers/pages/brands.dart';

class ResultBrandsPart extends ConsumerWidget {
  const ResultBrandsPart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool hasNews = ref.watch(hasBrandsProvider);
    final bool loading = ref.watch(loadBrandProvider);

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Stack(
        children: [
          !hasNews
              ? const NoResult()
              : Padding(
                  padding: const EdgeInsets.only(left: 18, top: 18, right: 18),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 190,
                    ),
                    itemBuilder: (context, index) {
                      final page = index ~/ pageSize + 1;
                      final indexInPage = index % pageSize;

                      DefaultParams arg =
                          DefaultParams(page: page, pageSize: pageSize);

                      final resultBrands = ref.watch(fetchBrandsProvider(arg));

                      return resultBrands.when(
                        skipLoadingOnRefresh: true,
                        skipLoadingOnReload: true,
                        skipError: true,
                        data: (response) {
                          if (response.error != '') {
                            return null;
                          }
                          if (indexInPage >= response.brands!.length) {
                            return null;
                          }

                          Brand brand = response.brands![indexInPage];
                          return BrandCard(brand: brand);
                        },
                        error: (error, stackTrace) => errorMethod(error),
                        loading: () {
                          if (!loading) {
                            Future.delayed(
                              const Duration(),
                              () => ref.read(loadBrandProvider.notifier).state =
                                  true,
                            );
                          }
                          return null;
                        },
                      );
                    },
                  ),
                ),
          loading ? loadWidget : const SizedBox(),
        ],
      ),
    );
  }
}
