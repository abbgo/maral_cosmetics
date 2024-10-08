import 'package:flutter_riverpod/flutter_riverpod.dart';

var showPasswordProvider = StateProvider.autoDispose<bool>((ref) => false);
var showPasswordValidateProvider =
    StateProvider.autoDispose<bool>((ref) => false);
