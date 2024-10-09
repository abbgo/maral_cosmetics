import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/services/api/user.dart';

final userApiServiceProvider =
    Provider<UserApiService>((ref) => UserApiService());
