import 'package:diya_ecomerce/config/go_route/app_routes.dart';
import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:diya_ecomerce/module/profile/controller/profile_controller.dart';
import 'package:diya_ecomerce/utils/helper/extension/general_extension.dart';
import 'package:diya_ecomerce/utils/widget/custom_setting_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../../gen/fonts.gen.dart';
import '../../../generated/l10n.dart';
import '../../../utils/controller/gloabal_controller.dart';
import '../../../utils/widget/custom_buttomsheet_changelanguage.dart';
import '../../../utils/widget/custom_card_language.dart';
import '../../../utils/widget/custom_head_ios.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          context.isDarkMode ? AppColor.primaryColorDark : Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColor.primaryColorDark : AppColor.textWhite,
        title: Text(S.current.setting_security),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.current.account_setting,
              style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: CustomCardSetting(
                list: settingAccountList,
                onTap: (index) {
                  debugPrint("------is index $index");
                  context.go(Routes.PROFILE_SCREEN + Routes.ACCOUNT_INFO);
                },
              ),
            ),
            const SizedBox(height: 10),
            Text(
              S.current.sys_security,
              style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
            ),
            const SizedBox(height: 10),
            //! Security

            SizedBox(
              height: 145,
              child: CustomCardSetting(
                list: systemandsecurity,
                onTap: (index) {
                  debugPrint("------is index ${index.runtimeType}");
                  if (index == 0) {
                    debugPrint("-----is Index 0");

                    context.go(Routes.PROFILE_SCREEN +
                        Routes.SETTING_SCREEN +
                        Routes.DARKMODE_SCREEN);
                  } else if (index == 1) {
                    onShowBottomSheetsLanguage(
                      context: context,
                      colors: Colors.transparent,
                      height: 220,
                      appbar: true,
                      child: Column(
                        children: [
                          const CustomHeaderIOS(),
                          Container(
                            height: 40,
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            margin: const EdgeInsets.only(bottom: 10),
                            width: double.infinity,
                            child: Text(
                              S.current.chooselanguage,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    fontSize: 20,
                                    fontFamily: App.isEnglish
                                        ? FontFamily.poppinsBold
                                        : FontFamily.kantumruyPro,
                                  ),
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            height: 1,
                            color: Color(0xffDDDDDD),
                          ),
                          CustomCardLanguage(
                            language: S.current.khmer,
                            select: Get.locale!.languageCode ==
                                Languages.khmer.code,
                            imageUrl: 'assets/svg/khmer_flag.svg',
                            ontap: () {
                              Get.put(App()).changeLanguage(Languages.khmer);

                              Navigator.pop(context);
                            },
                          ),
                          CustomCardLanguage(
                            language: S.current.english,
                            select: Get.locale!.languageCode ==
                                Languages.english.code,
                            imageUrl: 'assets/svg/en_flag.svg',
                            ontap: () {
                              Get.put(App()).changeLanguage(Languages.english);

                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    );
                  } else if (index == 2) {
                    debugPrint("-----is Index 2");
                  }
                },
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
