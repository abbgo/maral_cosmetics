import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/default_param.dart';
import 'package:maral_cosmetics/models/gallery.dart';
import 'package:maral_cosmetics/pages/parts/home_title.dart';
import 'package:maral_cosmetics/providers/api/gallery.dart';
import 'package:maral_cosmetics/providers/pages/galleries.dart';

class HomeGalery extends ConsumerWidget {
  const HomeGalery({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool loading = ref.watch(loadGalleryProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        HomeTitle(text: 'Gallereya toplumy', onTap: () {}),
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

                  final AsyncValue<ResultGallery> resultGallery =
                      ref.watch(fetchGalleriesProvider(arg));

                  return resultGallery.when(
                    data: (response) {
                      if (response.error != '') {
                        return null;
                      }
                      if (indexInPage >= response.galleries!.length) {
                        return null;
                      }

                      bool isLast = page == response.pageCount &&
                          (indexInPage + 1) == response.galleries!.length;

                      Gallery gallery = response.galleries![indexInPage];

                      return Container(
                        margin: EdgeInsets.only(
                          left: index == 0 ? 10 : 5,
                          right: isLast ? 10 : 5,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: SizedBox(
                            width: 140,
                            height: 92,
                            child: BlurHash(
                              errorBuilder: (context, error, stackTrace) =>
                                  loadWidget,
                              curve: Curves.easeOut,
                              hash: gallery.image.hashblur,
                              image: '$pathUrl/${gallery.image.url}',
                              imageFit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                    error: (error, stackTrace) => errorMethod(error),
                    loading: () {
                      if (!loading) {
                        Future.delayed(
                          const Duration(),
                          () => ref.read(loadGalleryProvider.notifier).state =
                              true,
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
