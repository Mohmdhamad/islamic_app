import 'package:flutter/material.dart';

class SebhaProvider extends ChangeNotifier {
  int count = 0;
  List<String> azkar = [
    'سبحان الله',
    'الحمدلله',
    'الله أكبر',
    'لا إله إلا الله',
  ];
  int index = 0;
  double turns = 0;
  void tasbeh() {
    count++;
    turns = count / 33;
    notifyListeners();
    if (count == 34) {
      count = 0;
      notifyListeners();
      index++;
      if (index == azkar.length) {
        index = 0;
      }
    }
  }
}
