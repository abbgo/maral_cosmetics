import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/models/user.dart';
import 'package:maral_cosmetics/providers/internet.dart';
import 'package:maral_cosmetics/services/api/user.dart';

final userApiServiceProvider =
    Provider<UserApiService>((ref) => UserApiService());

var registerUserProvider = FutureProvider.autoDispose.family<bool, UserParams>(
  (ref, arg) async {
    bool result = false;
    try {
      bool hasInternert =
          await ref.read(checkInternetConnProvider(arg.context).future);

      if (hasInternert) {
        result = await ref.read(userApiServiceProvider).registerUser(arg.user!);
      }
    } catch (e) {
      result = false;
    }
    return result;
  },
);

var checkOTPProvider =
    FutureProvider.autoDispose.family<ResponseUser, UserParams>(
  (ref, arg) async {
    ResponseUser result = ResponseUser.defaultResponse();

    try {
      bool hasInternert =
          await ref.read(checkInternetConnProvider(arg.context).future);

      if (hasInternert) {
        result = await ref.read(userApiServiceProvider).checkOTP(arg.otp!);
      }
    } catch (e) {
      result = ResponseUser.defaultResponse();
    }
    return result;
  },
);
