import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/confirm_password_input.dart';
import 'package:maral_cosmetics/pages/parts/fullname_input.dart';
import 'package:maral_cosmetics/pages/parts/login_button.dart';
import 'package:maral_cosmetics/pages/parts/password_input.dart';
import 'package:maral_cosmetics/pages/parts/register_button.dart';
import 'package:maral_cosmetics/pages/parts/phone_input.dart';
import 'package:maral_cosmetics/pages/parts/select_language_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
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
                child: Column(
                  children: [
                    const Text(
                      'Hasaba durmak',
                      style: TextStyle(fontSize: 20, color: Color(0xff824D6A)),
                    ),
                    const SizedBox(height: 30),
                    PhoneInput(phoneCtrl: phoneCtrl),
                    const SizedBox(height: 20),
                    const FullnameInput(),
                    const SizedBox(height: 20),
                    PasswordInput(passwordCtrl: passwordCtrl),
                    const SizedBox(height: 20),
                    const ConfirmPasswordInput(),
                    const SizedBox(height: 80),
                    const RegisterButton(forLogin: false),
                    const SizedBox(height: 10),
                    const LoginButton(forLogin: false),
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
