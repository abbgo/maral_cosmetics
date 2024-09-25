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
            : Padding(
                padding: const EdgeInsets.only(left: 18, top: 18, right: 18),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 6,
                    mainAxisExtent: 158,
                  ),
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

                        Gallery gallery = response.galleries![indexInPage];

                        return ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: BlurHash(
                            errorBuilder: (context, error, stackTrace) =>
                                loadWidget,
                            curve: Curves.easeOut,
                            hash: gallery.image.hashblur,
                            image: '$pathUrl/${gallery.image.url}',
                            imageFit: BoxFit.cover,
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
              ),
        loading ? loadWidget : const SizedBox(),
      ],
    );
  }
}
