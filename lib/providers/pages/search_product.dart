import 'package:flutter_riverpod/flutter_riverpod.dart';

var openSearchHistoryProvider = StateProvider.autoDispose<bool>((ref) => true);
var searchTextProvider = StateProvider.autoDispose<String>((ref) => '');
