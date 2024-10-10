import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/providers/internet.dart';
import 'package:maral_cosmetics/services/api/favorite.dart';

final favoriteApiServiceProvider =
    Provider<FavoriteApiService>((ref) => FavoriteApiService());

var logOutUserProvider = FutureProvider.autoDispose.family<bool, BuildContext>(
  (ref, arg) async {
    bool result = false;
    try {
      bool hasInternert = await ref.read(checkInternetConnProvider(arg).future);

      if (hasInternert) {
        String accessToken = await ref.read(accessTokenProvider);
        result = await ref.read(userApiServiceProvider).logOutUser(accessToken);
      }
    } catch (e) {
      result = false;
    }
    return result;
  },
);
