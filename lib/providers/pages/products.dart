import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/notifiers/pages/products.dart';

var productSearchProvider = StateProvider<String>((ref) => '');
var hasProductsProvider = StateProvider.autoDispose<bool>((ref) => true);
final loadProductsProvider = StateProvider<bool>((ref) => true);

var categoryIDsProvider =
    StateNotifierProvider<CategoryIDsNotifier, List<String>>(
        (ref) => CategoryIDsNotifier());

var brandIDsProvider = StateNotifierProvider<BrandIDsNotifier, List<String>>(
    (ref) => BrandIDsNotifier());
