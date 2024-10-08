import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/register.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
            side: const BorderSide(color: Color(0xff79747E)),
          ),
          backgroundColor: Colors.white,
        ),
        onPressed: () => goToPage(context, const RegisterPage(), false),
        child: const Text(
          'Hasaba durmak',
          style: TextStyle(color: Color(0xffA16F8A)),
        ),
      ),
    );
  }
}
