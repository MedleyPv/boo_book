import 'package:flutter/material.dart';

import 'package:boo_book/styles/index.dart';

class AppTheme {
  static ThemeData getAppTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: false,
      scaffoldBackgroundColor: AppColors.scaffoldBg,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        toolbarHeight: kToolbarHeight / 1.5,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: Colors.black,
      ),
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
          letterSpacing: 0.2,
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
        bodySmall: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w300,
        ),
        displaySmall: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w400,
        ),
      ).apply(displayColor: Colors.black),
      fontFamily: FontFamily.inter,
    );
  }
}
