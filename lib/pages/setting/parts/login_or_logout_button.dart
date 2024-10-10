import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/bottom_sheets.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/login.dart';
import 'package:maral_cosmetics/providers/local_storadge.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class LoginOrLogoutButton extends ConsumerWidget {
  const LoginOrLogoutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String accessToken = ref.watch(accessTokenProvider);

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xfff3dede),
        borderRadius: BorderRadius.circular(4),
      ),
      child: ListTile(
        onTap: () => accessToken.isEmpty
            ? Navigator.push(
                context,
                CustomPageRoute(
                  child: const LoginPage(),
                  direction: AxisDirection.left,
                ),
              )
            : showLogOutBottomSheet(context),
        leading: Icon(
          accessToken.isEmpty ? Icons.login : Icons.logout,
          color: defaultColor,
        ),
        title: Text(
          accessToken.isEmpty ? 'Ulgama girmek' : 'Ulgamdan cykmak',
          style: TextStyle(color: defaultColor, fontFamily: 'HeyWowRegular'),
        ),
      ),
    );
  }
}
