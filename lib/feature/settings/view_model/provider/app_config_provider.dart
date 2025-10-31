import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  String appLang = 'en';
  ThemeMode appTheme = ThemeMode.light;
  bool isDarkTheme() {
    if (appTheme == ThemeMode.dark) {
      return true;
    }
    return false;
  }

  void changeLang(String newLang) {
    if (appLang == newLang) {
      return;
    }
    appLang = newLang;
    notifyListeners();
  }

  void changeTheme(ThemeMode newTheme) {
    if (appTheme == newTheme) {
      return;
    }
    appTheme = newTheme;
    notifyListeners();
  }
}
