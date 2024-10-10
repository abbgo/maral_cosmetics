import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/services/api/phone.dart';

final phoneApiProvider = Provider<PhoneApiService>((ref) => PhoneApiService());
