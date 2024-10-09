import 'package:flutter_riverpod/flutter_riverpod.dart';

var buttonPressProvider = StateProvider.autoDispose<bool>((ref) => false);
