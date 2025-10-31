import 'package:flutter/material.dart';
import 'package:islamic_app/core/style/colors.dart';

class AppThemeData {
  static final ThemeData lightMode = ThemeData(
    primaryColor: AppColors.primaryLightColor,
    cardColor: AppColors.white.withOpacity(0.8),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: AppColors.black),
      backgroundColor: AppColors.transparent,
      elevation: 0.0,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.black,
      unselectedItemColor: AppColors.white,
    ),
    scaffoldBackgroundColor: AppColors.transparent,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
      ),
      titleMedium: TextStyle(
        color: AppColors.black,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        color: AppColors.black,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: AppColors.primaryLightColor,
      thickness: 3,
    ),
  );

  static final ThemeData darkMode = ThemeData(
    primaryColor: AppColors.primaryDarkColor,
    cardColor: AppColors.primaryDarkColor.withOpacity(0.8),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: AppColors.white),
      backgroundColor: AppColors.transparent,
      elevation: 0.0,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.yellow,
      unselectedItemColor: AppColors.white,
    ),
    scaffoldBackgroundColor: AppColors.transparent,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: AppColors.yellow,
      ),
      titleMedium: TextStyle(
        color: AppColors.yellow,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        color: AppColors.white,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
    dividerTheme: const DividerThemeData(color: AppColors.yellow, thickness: 3),
  );
}
