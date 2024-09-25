import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/default_param.dart';
import 'package:maral_cosmetics/models/gallery.dart';
import 'package:maral_cosmetics/pages/parts/no_result.dart';
import 'package:maral_cosmetics/providers/api/gallery.dart';
import 'package:maral_cosmetics/providers/pages/galleries.dart';

class ResultGalleryPart extends ConsumerWidget {
  const ResultGalleryPart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool loading = ref.watch(loadGalleryProvider);
    bool hasGalleries = ref.watch(hasGalleriesProvider);

    return Stack(
      children: [
        !hasGalleries
            ? const NoResult()
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                ),
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
    );
  }
}
