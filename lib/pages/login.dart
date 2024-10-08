import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/login_button.dart';
import 'package:maral_cosmetics/pages/parts/password_input.dart';
import 'package:maral_cosmetics/pages/parts/register_button.dart';
import 'package:maral_cosmetics/pages/parts/phone_input.dart';
import 'package:maral_cosmetics/pages/parts/select_language_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final TextEditingController phoneCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();

  @override
  void dispose() {
    phoneCtrl.dispose();
    passwordCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/logo.jpg"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: loginFormKey,
                child: Column(
                  children: [
                    const Text(
                      'Ulgama girmek',
                      style: TextStyle(fontSize: 20, color: Color(0xff824D6A)),
                    ),
                    const SizedBox(height: 40),
                    PhoneInput(phoneCtrl: phoneCtrl),
                    const SizedBox(height: 20),
                    PasswordInput(passwordCtrl: passwordCtrl),
                    const SizedBox(height: 80),
                    const LoginButton(forLogin: true),
                    const SizedBox(height: 10),
                    const RegisterButton(forLogin: true),
                    const SizedBox(height: 20),
                    const SelectLanguageButton(),
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
