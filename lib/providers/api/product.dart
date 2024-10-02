import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/services/api/product.dart';

final productApiProvider =
    Provider<ProductApiService>((ref) => ProductApiService());
