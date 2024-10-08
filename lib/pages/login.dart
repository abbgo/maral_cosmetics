import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/login_button.dart';
import 'package:maral_cosmetics/pages/parts/password_input.dart';
import 'package:maral_cosmetics/pages/parts/register_button.dart';
import 'package:maral_cosmetics/pages/parts/phone_input.dart';
import 'package:maral_cosmetics/pages/parts/select_language_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/logo.jpg"),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                child: Column(
                  children: [
                    Text(
                      'Ulgama girmek',
                      style: TextStyle(fontSize: 20, color: Color(0xff824D6A)),
                    ),
                    SizedBox(height: 40),
                    PhoneInput(),
                    SizedBox(height: 20),
                    PasswordInput(),
                    SizedBox(height: 80),
                    LoginButton(forLogin: true),
                    SizedBox(height: 10),
                    RegisterButton(forLogin: true),
                    SizedBox(height: 20),
                    SelectLanguageButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
