import 'package:flutter_riverpod/flutter_riverpod.dart';

var categorySearchProvider = StateProvider<String>((ref) => '');
var hasCategoriesProvider = StateProvider.autoDispose<bool>((ref) => true);
final loadCategoryProvider = StateProvider<bool>((ref) => true);
