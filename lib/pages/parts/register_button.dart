import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/register.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key, required this.forLogin});

  final bool forLogin;

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
        onPressed: () => forLogin
            ? goToPage(context, const RegisterPage(), true)
            : print('registrasiya funksiya'),
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
