import 'package:flutter_riverpod/flutter_riverpod.dart';

var selectedProductImageProvider = StateProvider.autoDispose<int>((ref) => 0);
