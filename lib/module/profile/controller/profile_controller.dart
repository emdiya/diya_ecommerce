import 'package:diya_ecomerce/module/profile/model/darkmode/darkmode_model.dart';
import 'package:diya_ecomerce/module/profile/model/setting/setting_account/setting_account_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../main.dart';

class AccountController extends GetxController {
  @factoryMethod
  static init() => Get.put(AccountController());
  final isEnglish = Language.eng.obs;
  final index = 0.obs;
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

final settingAccountList = [
  SettingAccountModel(
    label: "ព័ត៌មានគណនី",
    iconData: LineAwesomeIcons.user_check,
  ),
];

final systemandsecurity = [
  SettingAccountModel(
    label: "ផ្ទៃងងឹត",
    iconData: LineAwesomeIcons.moon,
  ),
  SettingAccountModel(
    label: "ភាសា",
    iconData: LineAwesomeIcons.language,
  ),
  SettingAccountModel(
    label: "ចាកចេញ",
    iconData: Icons.exit_to_app,
  ),
];

final darkModeList = [
  DarkModeModel(label: "Systen", isClick: false),
  DarkModeModel(label: "Light", isClick: false),
  DarkModeModel(label: "Dark", isClick: false),
];
