import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/providers/internet.dart';
import 'package:maral_cosmetics/providers/local_storadge.dart';
import 'package:maral_cosmetics/services/api/favorite.dart';

final favoriteApiServiceProvider =
    Provider<FavoriteApiService>((ref) => FavoriteApiService());

var addOrRemoveFavoriteProvider =
    FutureProvider.autoDispose.family<bool, FavoriteParams>(
  (ref, arg) async {
    bool result = false;
    try {
      bool hasInternert =
          await ref.read(checkInternetConnProvider(arg.context).future);

      if (hasInternert) {
        String accessToken = await ref.read(accessTokenProvider);
        result = await ref
            .read(favoriteApiServiceProvider)
            .addOrRemoveFavorite(accessToken, arg.productID);
      }
    } catch (e) {
      result = false;
    }
    return result;
  },
);
