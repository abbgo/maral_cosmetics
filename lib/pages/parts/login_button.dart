import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/database/functions/user.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/helpers/methods/parts/inputs.dart';
import 'package:maral_cosmetics/models/user.dart';
import 'package:maral_cosmetics/pages/home.dart';
import 'package:maral_cosmetics/pages/login.dart';
import 'package:maral_cosmetics/providers/api/user.dart';
import 'package:maral_cosmetics/providers/local_storadge.dart';
import 'package:maral_cosmetics/providers/pages/bottom_navigation.dart';
import 'package:maral_cosmetics/providers/pages/login_and_register.dart';
import 'package:maral_cosmetics/services/api/user.dart';

class LoginButton extends ConsumerWidget {
  const LoginButton({
    super.key,
    required this.forLogin,
    this.loginFormKey,
    this.phoneCtrl,
    this.passwordCtrl,
  });

  final bool forLogin;
  final GlobalKey<FormState>? loginFormKey;
  final TextEditingController? phoneCtrl;
  final TextEditingController? passwordCtrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool buttonPress = ref.watch(buttonPressProvider);

    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
            side: forLogin
                ? BorderSide.none
                : const BorderSide(color: Color(0xff79747E)),
          ),
          backgroundColor: forLogin ? const Color(0xffA16F8A) : Colors.white,
        ),
        onPressed: buttonPress
            ? null
            : () async {
                if (!forLogin) {
                  goToPage(context, const LoginPage(), true);
                  return;
                }

                if (loginFormKey?.currentState?.validate() == false) {
                  showErrorSnackbar(context, 'Ýalňyşlyk ýüze çykdy !');
                  return;
                }

                ref.read(buttonPressProvider.notifier).state = true;

                UserParams arg = UserParams(
                  user: User(
                    phone: '+993${phoneCtrl?.text}',
                    password: passwordCtrl!.text,
                  ),
                  context: context,
                );

                ResponseUser responseUser =
                    await ref.read(loginUserProvider(arg).future);
                if (responseUser.user == null) {
                  if (context.mounted) {
                    showErrorSnackbar(context, 'Ýalňyşlyk ýüze çykdy !');
                    ref.read(buttonPressProvider.notifier).state = false;
                  }
                  return;
                }

                await createOrUpdateUser(responseUser.user!);
                await ref
                    .read(accessTokenProvider.notifier)
                    .update(responseUser.accessToken);
                ref.read(selectedBottomIndexProvider.notifier).state = 3;
                ref.read(buttonPressProvider.notifier).state = false;
                if (context.mounted) {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                    (Route<dynamic> route) => false,
                  );
                }
              },
        child: Text(
          'Ulgama girmek',
          style: TextStyle(
            color: forLogin ? Colors.white : const Color(0xffA16F8A),
          ),
        ),
      ),
    );
  }
}
