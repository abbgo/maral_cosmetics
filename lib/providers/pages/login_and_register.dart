import 'package:flutter_riverpod/flutter_riverpod.dart';

var buttonPressProvider = StateProvider.autoDispose<bool>((ref) => false);
var loadOTPProvider = StateProvider.autoDispose<bool>((ref) => false);
var loadLogOutProvider = StateProvider.autoDispose<bool>((ref) => false);
