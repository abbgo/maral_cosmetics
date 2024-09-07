import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/services/api/brand.dart';

final brandApiProvider = Provider<BrandApiService>((ref) => BrandApiService());
