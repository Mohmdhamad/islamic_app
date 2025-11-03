import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:islamic_app/feature/radio/model/radio_model.dart';

class RadioProvider extends ChangeNotifier {
  List<RadioModel> radios = [];
  final player = AudioPlayer();

  Future getRadios() async {
    var uri = Uri.parse('https://www.mp3quran.net/api/v3/radios?language=ar');
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      radios = (data['radios'] as List)
          .map((e) => RadioModel.fromJson(e))
          .toList();
      notifyListeners();
      return radios;
    } else {
      print('Failed to get data: ${response.statusCode}');
    }
  }
}
