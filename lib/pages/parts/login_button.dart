import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/login.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.forLogin,
    required this.loginFormKey,
    required this.phoneCtrl,
    required this.passwordCtrl,
  });

  final bool forLogin;
  final GlobalKey<FormState> loginFormKey;
  final TextEditingController phoneCtrl;
  final TextEditingController passwordCtrl;

  @override
  Widget build(BuildContext context) {
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
        onPressed: () {
          if (!forLogin) {
            goToPage(context, const LoginPage(), true);
            return;
          }

          if (loginFormKey.currentState?.validate() == true) {
            print('phone: ${phoneCtrl.text}');
            print('password: ${passwordCtrl.text}');
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
