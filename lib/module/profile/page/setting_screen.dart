import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:diya_ecomerce/module/profile/controller/profile_controller.dart';
import 'package:diya_ecomerce/utils/helper/extension/general_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/app_colors.dart';
import '../../../utils/controller/gloabal_controller.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting "),
        centerTitle: true,
      ),
      body: Obx(
        () => Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(left: 20.0, right: 20),
              title: const Text(
                "Language",
              ),
              trailing: AnimatedToggleSwitch<Language>.rolling(
                  current: Get.put(AccountController()).isEnglish.value,
                  values: const [Language.khm, Language.eng],
                  height: 34,
                  borderWidth: 2.18,
                  innerColor: context.isDarkMode ? null : AppColor.textGrey,
                  borderColor: Colors.transparent,
                  onChanged: (v) {
                    debugPrint("----->> Value: $v");
                    Get.put(AccountController()).isEnglish.value = v;
                    debugPrint(
                        "-------->> isLanguage: ${Get.put(AccountController()).isEnglish.value}");

                    if (Get.put(AccountController()).isEnglish.value ==
                        "Languages.eng") {
                      Get.put(App()).changeLanguage(Languages.english);
                    } else {
                      Get.put(App()).changeLanguage(Languages.khmer);
                    }
                  },
                  indicatorColor: context.isDarkMode
                      ? Theme.of(context).colorScheme.primary
                      : AppColor.secondaryColor,
                  iconBuilder: (value, size, foreground) {
                    return Center(
                      child: Text(
                        value == Language.eng ? "En" : "ខ្មែរ",
                        style: value ==
                                Get.put(AccountController()).isEnglish.value
                            ? context.text.labelLarge?.copyWith(
                                fontSize: 12,
                                color: context.isDarkMode
                                    ? AppColor.secondaryColor
                                    : Theme.of(context).primaryColor)
                            : context.text.labelMedium?.copyWith(
                                fontSize: 12, color: AppColor.secondaryColor),
                      ),
                    );
                  }),
            ),
            ListTile(
              visualDensity: VisualDensity.compact,
              contentPadding: const EdgeInsets.only(left: 20.0, right: 20),
              title: Text("Dark Mode", style: context.text.bodyMedium),
              trailing: Switch.adaptive(
                value: Get.put(AccountController()).isDarkMode.value,
                onChanged: (value) {
                  Get.put(AccountController()).isDarkMode.value = value;
                  debugPrint(
                    "Value: ${Get.put(AccountController()).isDarkMode.value}",
                  );
                  Get.changeThemeMode(value ? ThemeMode.dark : ThemeMode.light);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
