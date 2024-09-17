import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/notifiers/internet.dart';

final connectivityStatusProviders = StateNotifierProvider((ref) {
  return ConnectivityStatusNotifier();
});
