import 'package:flutter/material.dart';

import 'package:boo_book/styles/index.dart';

class AppTheme {
  static ThemeData getAppTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: false,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
      ),
      fontFamily: FontFamily.poppins,
    );
  }
}
