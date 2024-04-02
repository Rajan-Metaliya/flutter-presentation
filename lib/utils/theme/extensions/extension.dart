import 'package:flutter/material.dart';

import 'text_theme.dart';

extension ThemeDataExtension on ThemeData {
  AppTextTheme get appTextTheme => extension<AppTextTheme>() ?? AppTextTheme();
}
