import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/providers/parts/password_input.dart';
import 'package:maral_cosmetics/styles/decorations.dart';
import 'package:maral_cosmetics/styles/text_styles.dart';

class PasswordInput extends ConsumerWidget {
  const PasswordInput({super.key, required this.passwordCtrl});

  final TextEditingController passwordCtrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool showPassword = ref.watch(showPasswordProvider);

    return TextFormField(
      controller: passwordCtrl,
      cursorColor: Colors.black,
      style: const TextStyle(fontFamily: 'Inter'),
      obscureText: !showPassword,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        errorBorder: errorBorder,
        focusedErrorBorder: errorBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        errorStyle: emptyTextStyle,
        helperStyle: emptyTextStyle,
        helperText: '',
        labelText: ' Açar söz ',
        labelStyle: const TextStyle(color: Colors.black, fontFamily: 'Inter'),
        suffixIcon: GestureDetector(
          onTap: () =>
              ref.read(showPasswordProvider.notifier).state = !showPassword,
          child: Icon(
            showPassword ? Icons.visibility : Icons.visibility_off,
            color: const Color(0xff9D9D9D),
          ),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '';
        }
        return null;
      },
    );
  }
}
