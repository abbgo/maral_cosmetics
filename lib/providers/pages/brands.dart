import 'package:flutter_riverpod/flutter_riverpod.dart';

var brandSearchProvider = StateProvider<String>((ref) => '');
var hasBrandsProvider = StateProvider.autoDispose<bool>((ref) => true);
final loadBrandProvider = StateProvider<bool>((ref) => true);
