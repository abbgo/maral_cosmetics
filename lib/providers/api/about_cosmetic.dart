import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/services/api/about_cosmetic.dart';

final aboutCosmeticApiProvider =
    Provider<AboutCosmeticApiService>((ref) => AboutCosmeticApiService());
