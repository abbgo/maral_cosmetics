import 'package:flutter_riverpod/flutter_riverpod.dart';

var newsSearchProvider = StateProvider<String>((ref) => '');
var hasNewsProvider = StateProvider.autoDispose<bool>((ref) => true);
final loadNewsProvider = StateProvider<bool>((ref) => true);
