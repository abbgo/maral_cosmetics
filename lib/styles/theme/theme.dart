import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/theme/parts/app_bar_theme.dart';
import 'package:maral_cosmetics/styles/theme/parts/bottom_navigation_bar_theme.dart';
import 'package:maral_cosmetics/styles/theme/parts/card_theme.dart';
import 'package:maral_cosmetics/styles/theme/parts/elevated_button_theme.dart';
import 'package:maral_cosmetics/styles/theme/parts/icon_button_theme.dart';
import 'package:maral_cosmetics/styles/theme/parts/input_theme.dart';
import 'package:maral_cosmetics/styles/theme/parts/text_theme.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'MarcellusSC',
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    dialogBackgroundColor: Colors.white,
    bottomNavigationBarTheme:
        AppBottomNavigationBar.lightBottomNavigationBarThemeData,
    iconButtonTheme: AppIconButtonTheme.lightIconButtonTheme,
    inputDecorationTheme: AppInputTheme.lightInputTheme,
    cardTheme: AppCardTheme.lightCardTheme,
  );
}
