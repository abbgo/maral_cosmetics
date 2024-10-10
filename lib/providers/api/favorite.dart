import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/services/api/favorite.dart';

final favoriteApiServiceProvider =
    Provider<FavoriteApiService>((ref) => FavoriteApiService());
