import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/services/api/user.dart';

final userApiServiceProvider =
    Provider<UserApiService>((ref) => UserApiService());

var registerUserProvider = FutureProvider.autoDispose
    .family<ResultLoginShopOwner, LoginShopOwnerParams>((ref, arg) async {
  ResultLoginShopOwner result = ResultLoginShopOwner.defaultResult();

  try {
    bool hasInternert =
        await ref.read(checkInternetConnProvider(arg.context).future);

    if (hasInternert) {
      ResponseLoginShopOwner responseLoginShopOwner = await ref
          .read(shopOwnerApiServiceProvider)
          .loginShopOwner(arg.phoneNumber, arg.password);

      result = ResultLoginShopOwner(
          error: '', responseLoginShopOwner: responseLoginShopOwner);
    }
  } catch (e) {
    result = ResultLoginShopOwner(error: e.toString());
  }

  return result;
});
