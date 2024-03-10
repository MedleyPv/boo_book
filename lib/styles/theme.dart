import 'package:flutter/material.dart';

import 'package:boo_book/styles/index.dart';

class AppTheme {
  static ThemeData getAppTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: false,
      scaffoldBackgroundColor: AppColors.scaffoldBg,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.black,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        displayMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ).apply(displayColor: Colors.black),
      fontFamily: FontFamily.inter,
    );
  }
}
