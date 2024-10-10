import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/models/phone.dart';
import 'package:maral_cosmetics/services/api/phone.dart';

final phoneApiProvider = Provider<PhoneApiService>((ref) => PhoneApiService());

var fetchPhonesProvider =
    FutureProvider.autoDispose.family<ResultPhone, String>(
  (ref, arg) async {
    ResultPhone result = ResultPhone.defaultResult();

    try {
      ResultPhone resultPhone =
          await ref.read(phoneApiProvider).fetchPhones(arg);

      result = resultPhone;
    } catch (e) {
      result = ResultPhone(error: e.toString());
    }

    return result;
  },
);
