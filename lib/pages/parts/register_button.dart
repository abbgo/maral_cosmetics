import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/register.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
    required this.forLogin,
    this.registerFormKey,
    this.phoneCtrl,
    this.fullNameCtrl,
    this.passwordCtrl,
    this.confirmPasswordCtrl,
  });

  final bool forLogin;
  final GlobalKey<FormState>? registerFormKey;
  final TextEditingController? phoneCtrl;
  final TextEditingController? fullNameCtrl;
  final TextEditingController? passwordCtrl;
  final TextEditingController? confirmPasswordCtrl;

  @override
  Widget build(BuildContext context) {
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

          if (registerFormKey?.currentState?.validate() == true) {
            print('phone: ${phoneCtrl!.text}');
            print('fullName: ${fullNameCtrl!.text}');
            print('password: ${passwordCtrl!.text}');
            print('confirmPassword: ${confirmPasswordCtrl!.text}');
          }
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
