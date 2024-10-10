import 'package:flutter_riverpod/flutter_riverpod.dart';

var sortProductProvider = StateProvider<String>((ref) => 'all');
var minPriceProvider = StateProvider<String?>((ref) => null);
var maxPriceProvider = StateProvider<String?>((ref) => null);
