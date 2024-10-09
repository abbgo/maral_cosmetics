import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/providers/parts/password_input.dart';
import 'package:maral_cosmetics/styles/decorations.dart';
import 'package:maral_cosmetics/styles/text_styles.dart';

class ConfirmPasswordInput extends ConsumerWidget {
  const ConfirmPasswordInput({super.key, required this.passwordCtrl});

  final TextEditingController passwordCtrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool showPassword = ref.watch(showConfirmPasswordProvider);

    return TextFormField(
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
        labelText: ' Açar sözi tasyklaň ',
        labelStyle: const TextStyle(color: Colors.black, fontFamily: 'Inter'),
        suffixIcon: GestureDetector(
          onTap: () => ref.read(showConfirmPasswordProvider.notifier).state =
              !showPassword,
          child: Icon(
            showPassword ? Icons.visibility : Icons.visibility_off,
            color: const Color(0xff9D9D9D),
          ),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty || value != passwordCtrl.text) {
          return '';
        }
        return null;
      },
    );
  }
}
