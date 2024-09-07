import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/brand.dart';
import 'package:maral_cosmetics/models/default_param.dart';
import 'package:maral_cosmetics/pages/parts/home_title.dart';
import 'package:maral_cosmetics/providers/api/brand.dart';

class HomeBrends extends ConsumerWidget {
  const HomeBrends({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        HomeTitle(text: 'Hyzmatdas brendler', onTap: () {}),
        SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final page = index ~/ pageSize + 1;
              final indexInPage = index % pageSize;

              DefaultParams arg = DefaultParams(page: page, pageSize: pageSize);

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

                  Brand brand = response.brands![indexInPage];
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Container(
                      margin: EdgeInsets.only(
                        left: index == 0 ? 10 : 0,
                        right: index == homeBrends.length - 1 ? 10 : 0,
                      ),
                      width: 130,
                      height: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: BlurHash(
                        errorBuilder: (context, error, stackTrace) =>
                            loadWidget,
                        curve: Curves.easeOut,
                        hash: brand.logo.hashblur,
                        image: '$pathUrl/${brand.logo.url}',
                        imageFit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                error: (error, stackTrace) => errorMethod(error),
                loading: () => null,
              );
            },
          ),
        ),
      ],
    );
  }
}
