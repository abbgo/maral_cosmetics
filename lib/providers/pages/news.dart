import 'package:flutter_riverpod/flutter_riverpod.dart';

var newsSearchProvider = StateProvider.autoDispose<String>((ref) => '');
var hasNewsProvider = StateProvider.autoDispose<bool>((ref) => true);
final loadNewsProvider = StateProvider.autoDispose<bool>((ref) => true);
