import 'package:flutter_riverpod/flutter_riverpod.dart';

var aboutCosmeticsSearchProvider = StateProvider<String>((ref) => '');
var hasAboutCosmeticsProvider = StateProvider.autoDispose<bool>((ref) => true);
final loadAboutCosmeticsProvider =
    StateProvider.autoDispose<bool>((ref) => true);
