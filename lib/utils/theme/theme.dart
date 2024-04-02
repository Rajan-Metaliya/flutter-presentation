import 'package:flutter/material.dart';

import 'extensions/text_theme.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    colorScheme: const ColorScheme(
      primary: Color(0xff059D66),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xffffffff),
      secondary: Color(0xff059D66),
      error: Color(0xffB00020),
      onError: Color(0xffffffff),
      background: Color(0xffF5F5F5),
      onBackground: Color(0xff000000),
      surface: Color(0xffffffff),
      onSurface: Color(0xff000000),
      brightness: Brightness.light,
    ),
    // Add the extension to the list of extensions
    extensions: [
      AppTextTheme(),
    ],
    useMaterial3: true,
  );

  static ThemeData darkThemeData = ThemeData(
    colorScheme: const ColorScheme(
      primary: Color(0xff059D66),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xffffffff),
      secondary: Color(0xff059D66),
      error: Color(0xffB00020),
      onError: Color(0xffffffff),
      background: Color(0xff212121),
      onBackground: Color(0xffffffff),
      surface: Color(0xff000000),
      onSurface: Color(0xffffffff),
      brightness: Brightness.dark,
    ),
    useMaterial3: true,

    // Add the extension to the list of extensions
    extensions: [
      AppTextTheme.dark(),
    ],
  );
}
