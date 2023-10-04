import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends GetxController {
  final localLang = 'kk'.obs;

  void changeLanguage(Languages language) {
    Get.updateLocale(Locale(language.code));
  }

  static bool get isEnglish =>
      Get.locale?.countryCode == Languages.english.code;
}

enum Languages {
  english('en'),
  khmer('kk');

  const Languages(this.code);
  final String code;
}
