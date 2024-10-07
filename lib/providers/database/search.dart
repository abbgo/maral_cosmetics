import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/database/functions/search.dart';

final createSearchProvider = FutureProvider.autoDispose.family<void, String>(
  (ref, arg) async {
    await createSearch(arg);
  },
);
