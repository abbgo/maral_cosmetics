import 'package:flutter_riverpod/flutter_riverpod.dart';

var productSearchProvider = StateProvider<String>((ref) => '');
var hasProductsProvider = StateProvider.autoDispose<bool>((ref) => true);
final loadProductsProvider = StateProvider<bool>((ref) => true);
final categoryIDsProvider = StateProvider<List<String>>((ref) => []);
