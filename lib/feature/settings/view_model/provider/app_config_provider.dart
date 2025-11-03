import 'package:flutter/material.dart';
import 'package:islamic_app/core/cache/cache_helper.dart';

class AppConfigProvider extends ChangeNotifier {
  String appLang = 'en';
  ThemeMode appTheme = ThemeMode.light;

  bool isDarkTheme() => appTheme == ThemeMode.dark;

  void changeLang(String newLang) {
    if (appLang == newLang) return;
    appLang = newLang;
    CacheHelper.sharedPreferences.setString('lang', newLang);
    notifyListeners();
  }

  void changeTheme(ThemeMode newTheme) {
    if (appTheme == newTheme) return;
    appTheme = newTheme;
    CacheHelper.sharedPreferences.setString(
      'theme',
      newTheme == ThemeMode.dark ? 'dark' : 'light',
    );
    notifyListeners();
  }

  void loadSettings() {
    appLang = CacheHelper.sharedPreferences.getString('lang') ?? 'en';
    final theme = CacheHelper.sharedPreferences.getString('theme') ?? 'light';
    appTheme = theme == 'dark' ? ThemeMode.dark : ThemeMode.light;
  }
}
