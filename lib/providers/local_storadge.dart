import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_riverpod/shared_preferences_riverpod.dart';

late SharedPreferences prefs;

final langProvider = createPrefProvider<String>(
  prefs: (_) => prefs,
  prefKey: "lang",
  defaultValue: 'tk',
);

final isFirstTimeProvider = createPrefProvider<bool>(
  prefs: (_) => prefs,
  prefKey: "is_first_time",
  defaultValue: true,
);

final accessTokenProvider = createPrefProvider<String>(
  prefs: (_) => prefs,
  prefKey: "access_token",
  defaultValue: '',
);
