import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/login.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, required this.forLogin});

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
                ? BorderSide.none
                : const BorderSide(color: Color(0xff79747E)),
          ),
          backgroundColor: forLogin ? const Color(0xffA16F8A) : Colors.white,
        ),
        onPressed: () => forLogin
            ? print('login funksiya')
            : goToPage(context, const LoginPage(), false),
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
