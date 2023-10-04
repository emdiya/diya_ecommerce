import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import '../../../../main.dart';

class AccountController extends GetxController {
  @factoryMethod
  static init() => Get.put(AccountController());
  final isEnglish = Language.eng.obs;
  final accountImage =
      "https://miro.medium.com/v2/resize:fit:1400/0*1WJiB8mUJKcylomi.jpg".obs;
  // final currentMode = VisualMode.light.obs;
  final isDarkMode = false.obs;
  @override
  void onInit() {
    debugPrint("isDarkMode=${globalContext.get<BuildContext>().isDarkMode}");

    isDarkMode.value = globalContext.get<BuildContext>().isDarkMode;
    super.onInit();
  }
}

enum Language {
  eng,
  khm,
}

enum VisualMode {
  system,
  dark,
  light,
}
