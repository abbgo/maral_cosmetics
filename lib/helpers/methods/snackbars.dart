import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

void showIntConnErr(BuildContext context) {
  var snackBar = SnackBar(
    content: Text(
      AppLocalizations.of(context)!.noIntConn,
      style: const TextStyle(color: Colors.white, fontFamily: 'Inter'),
    ),
    duration: const Duration(seconds: 3),
    backgroundColor: Colors.red,
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void showErrorSnackbar(BuildContext context, String text) {
  return showTopSnackBar(
    Overlay.of(context),
    CustomSnackBar.error(
      icon: const SizedBox.shrink(),
      backgroundColor: const Color(0xffece2e8),
      message: text,
      textStyle:
          const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.bold),
    ),
  );
}
