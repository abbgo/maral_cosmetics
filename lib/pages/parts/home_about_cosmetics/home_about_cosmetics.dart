import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/about_cosmetic.dart';
import 'package:maral_cosmetics/models/default_param.dart';
import 'package:maral_cosmetics/pages/parts/home_about_cosmetics/parts/home_about_cosmetics_card.dart';
import 'package:maral_cosmetics/providers/api/about_cosmetic.dart';
import 'package:maral_cosmetics/providers/pages/about_cosmetics.dart';

class HomeAboutCosmetics extends ConsumerWidget {
  const HomeAboutCosmetics({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool loading = ref.watch(loadAboutCosmeticsProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const ListTile(
          title: Text('Kosmetika barada', style: TextStyle(fontSize: 20)),
        ),
        SizedBox(
          height: 120,
          child: Stack(
            children: [
              // HomeAboutCosmeticsList(),
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final page = index ~/ pageSize + 1;
                  final indexInPage = index % pageSize;

                  DefaultParams arg =
                      DefaultParams(page: page, pageSize: pageSize);

                  final AsyncValue<ResultAboutCosmetic> resultAboutCosmetic =
                      ref.watch(fetchAboutCosmeticsProvider(arg));

                  return resultAboutCosmetic.when(
                    data: (response) {
                      if (response.error != '') {
                        return null;
                      }
                      if (indexInPage >= response.aboutCosmetics!.length) {
                        return null;
                      }

                      bool isLast = page == response.pageCount &&
                          (indexInPage + 1) == response.aboutCosmetics!.length;

                      AboutCosmetic aboutCosmetic =
                          response.aboutCosmetics![indexInPage];
                      // return Text(aboutCosmetic.id);

                      return HomeAboutCosmeticsCard(
                        aboutCosmetic: aboutCosmetic,
                        isFirst: index == 0,
                        isLast: isLast,
                      );
                    },
                    error: (error, stackTrace) => errorMethod(error),
                    loading: () {
                      if (!loading) {
                        Future.delayed(
                          const Duration(),
                          () => ref
                              .read(loadAboutCosmeticsProvider.notifier)
                              .state = true,
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
