import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/database/functions/user.dart';
import 'package:maral_cosmetics/models/user.dart';

final getUserProvider =
    FutureProvider.autoDispose<User?>((ref) async => await getUser());
