import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/helpers/methods/parts/inputs.dart';
import 'package:maral_cosmetics/models/user.dart';
import 'package:maral_cosmetics/pages/register.dart';
import 'package:maral_cosmetics/providers/pages/login_and_register.dart';

class RegisterButton extends ConsumerWidget {
  const RegisterButton({
    super.key,
    required this.forLogin,
    this.registerFormKey,
    this.phoneCtrl,
    this.fullNameCtrl,
    this.passwordCtrl,
  });

  final bool forLogin;
  final GlobalKey<FormState>? registerFormKey;
  final TextEditingController? phoneCtrl;
  final TextEditingController? fullNameCtrl;
  final TextEditingController? passwordCtrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
            side: forLogin
                ? const BorderSide(color: Color(0xff79747E))
                : BorderSide.none,
          ),
          backgroundColor: forLogin ? Colors.white : const Color(0xffA16F8A),
        ),
        onPressed: () {
          if (forLogin) {
            goToPage(context, const RegisterPage(), true);
            return;
          }

          if (registerFormKey?.currentState?.validate() == false) {
            showErrorSnackbar(context, 'Ýalňyşlyk ýüze çykdy !');
            return;
          }

          ref.read(buttonPressProvider.notifier).state = true;

          User arg = User(
            name: fullNameCtrl!.text,
            phone: '+993${phoneCtrl?.text}',
            password: passwordCtrl!.text,
          );
        },
        child: Text(
          'Hasaba durmak',
          style: TextStyle(
            color: forLogin ? const Color(0xffA16F8A) : Colors.white,
          ),
        ),
      ),
    );
  }
}
