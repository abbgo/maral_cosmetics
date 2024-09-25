import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/models/default_param.dart';
import 'package:maral_cosmetics/models/gallery.dart';
import 'package:maral_cosmetics/providers/pages/galleries.dart';
import 'package:maral_cosmetics/services/api/gallery.dart';

final galleryApiProvider =
    Provider<GalleryApiService>((ref) => GalleryApiService());

var fetchGalleriesProvider =
    FutureProvider.autoDispose.family<ResultGallery, DefaultParams>(
  (ref, arg) async {
    ResultGallery result = ResultGallery.defaultResult();

    try {
      String search = await ref.watch(gallerySearchProvider);

      ResultGallery resultGallery =
          await ref.read(galleryApiProvider).fetchGalleries(
                page: arg.page!,
                pageSize: arg.pageSize!,
                search: search,
              );

      if (search != '') {
        ref.read(hasGalleriesProvider.notifier).state =
            resultGallery.galleries!.isNotEmpty;
      }

      result = resultGallery;
    } catch (e) {
      result = ResultGallery(error: e.toString());
    }

    ref.read(loadGalleryProvider.notifier).state = false;
    return result;
  },
);
