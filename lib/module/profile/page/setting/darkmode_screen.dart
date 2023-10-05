import 'package:diya_ecomerce/config/theme/theme_controller.dart';
import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:diya_ecomerce/generated/l10n.dart';
import 'package:diya_ecomerce/module/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DarkModeScreen extends StatefulWidget {
  const DarkModeScreen({super.key});

  @override
  State<DarkModeScreen> createState() => _DarkModeScreenState();
}

class _DarkModeScreenState extends State<DarkModeScreen> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    final accountController = Get.put(AccountController());
    final auth = Get.put(ThemeController());

    return Scaffold(
      backgroundColor:
          context.isDarkMode ? AppColor.primaryColorDark : Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColor.primaryColorDark : AppColor.textWhite,
        title: Text(S.current.dark_mode),
        centerTitle: true,
      ),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("កំណត់រូបរាងដែលស្រស់ស្អាតសម្រាប់អ្នក"),
              const SizedBox(height: 10),
              ...darkModeList.asMap().entries.map((e) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        accountController.index.value = e.key;
                        if (accountController.index.value == 0) {
                          Get.changeThemeMode(ThemeMode.system);
                        } else if (accountController.index.value == 1) {
                          Get.changeThemeMode(ThemeMode.light);
                        } else if (accountController.index.value == 2) {
                          Get.changeThemeMode(ThemeMode.dark);
                        }
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: context.isDarkMode
                                ? AppColor.cardColorDark.withOpacity(0.5)
                                : Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              accountController.index.value == e.key
                                  ? Icon(
                                      Icons.check_circle,
                                      color: AppColor.primaryColor,
                                    )
                                  : Icon(
                                      Icons.circle,
                                      color: Colors.grey.shade300,
                                    ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text("${e.value.label}"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                  ],
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
