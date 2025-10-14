import 'package:flutter/material.dart';
import 'package:islamic_app/core/style/colors.dart';

class AppThemeData {
  static final ThemeData lightMode = ThemeData(
    primaryColor: AppColors.primaryLightColor,
    appBarTheme: AppBarThemeData(
      backgroundColor: AppColors.transparent,
      elevation: 0.0,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.black,
      unselectedItemColor: AppColors.white,
    ),
    scaffoldBackgroundColor: AppColors.transparent,
    textTheme: TextTheme(
      titleLarge: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
      ),
      bodyLarge: const TextStyle(
        color: AppColors.black,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    ),
  );

  static final ThemeData darkMode = ThemeData(
    appBarTheme: AppBarThemeData(
      backgroundColor: AppColors.transparent,
      elevation: 0.0,
      centerTitle: true,
    ),
    scaffoldBackgroundColor: AppColors.transparent,
  );
}
