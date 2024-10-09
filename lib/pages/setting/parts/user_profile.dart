import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/models/user.dart';
import 'package:maral_cosmetics/providers/database/user.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:maral_cosmetics/styles/style_borders.dart';

class UserProfile extends ConsumerWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<User?> user = ref.watch(getUserProvider);

    return user.when(
      data: (data) {
        if (data == null) {
          return const SizedBox.shrink();
        }

        return ListTile(
          shape: bottomBorder,
          leading: Icon(Icons.account_circle, color: defaultColor, size: 50),
          title: Text(
            data.name!,
            style: TextStyle(color: defaultColor, fontFamily: 'HeyWowRegular'),
          ),
          subtitle: Text(
            data.phone,
            style: TextStyle(color: defaultColor, fontFamily: 'HeyWowRegular'),
          ),
        );
      },
      error: (error, stackTrace) => errorMethod(error),
      loading: () => loadWidget,
    );
  }
}
