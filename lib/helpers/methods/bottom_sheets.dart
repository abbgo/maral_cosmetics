import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/contact_phones/contact_phones.dart';
import 'package:maral_cosmetics/pages/parts/log_out_bottom_sheet/log_out_bottom_sheet.dart';
import 'package:maral_cosmetics/pages/parts/select_language/select_language.dart';

showLanguageBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) => const SelectLanguage(),
  );
}

showPhonesBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) => const ContactPhones(),
  );
}

showLogOutBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) => const LogOutBottomSheet(),
  );
}
