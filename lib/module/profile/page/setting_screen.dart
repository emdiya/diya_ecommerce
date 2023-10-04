import 'package:diya_ecomerce/config/go_route/app_routes.dart';
import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:diya_ecomerce/module/profile/controller/profile_controller.dart';
import 'package:diya_ecomerce/utils/helper/extension/general_extension.dart';
import 'package:diya_ecomerce/utils/widget/custom_setting_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

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
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: AppColor.textWhite,
        title: Text(S.current.setting_security),
        centerTitle: true,
      ),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "កំណត់គណនី",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 40,
                child: CustomCardSetting(
                  list: settingAccountList,
                  onTap: () {
                    context.go(Routes.PROFILE_SCREEN + Routes.ACCOUNT_INFO);
                  },
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "ប្រព័ន្ធ និងសុវត្ថិភាព",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 115,
                child: CustomCardSetting(
                  list: systemandsecurity,
                  onTap: () {
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
                  },
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.current.language,
                  ),
                  GestureDetector(
                    onTap: () {
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
                                Get.put(App())
                                    .changeLanguage(Languages.english);

                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                    child: Container(
                      height: 31,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.7),
                          width: 1.5,
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/svg/language.svg',
                              fit: BoxFit.cover,
                              height: 24,
                              width: 24,
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              size: 26,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // ListTile(
              //   contentPadding: const EdgeInsets.only(left: 20.0, right: 20),
              //   title: const Text(
              //     "Language",
              //   ),
              //   trailing: AnimatedToggleSwitch<Language>.rolling(
              //       current: Get.put(AccountController()).isEnglish.value,
              //       values: const [Language.khm, Language.eng],
              //       height: 34,
              //       borderWidth: 2.18,
              //       innerColor: context.isDarkMode ? null : AppColor.textGrey,
              //       borderColor: Colors.transparent,
              //       onChanged: (v) {
              //         debugPrint("----->> Value: $v");
              //         Get.put(AccountController()).isEnglish.value = v;
              //         debugPrint(
              //             "-------->> isLanguage: ${Get.put(AccountController()).isEnglish.value}");

              //         if (Get.put(AccountController()).isEnglish.value ==
              //             "Languages.eng") {
              //           Get.put(App()).changeLanguage(Languages.english);
              //         } else {
              //           Get.put(App()).changeLanguage(Languages.khmer);
              //         }
              //       },
              //       indicatorColor: context.isDarkMode
              //           ? Theme.of(context).colorScheme.primary
              //           : AppColor.secondaryColor,
              //       iconBuilder: (value, size, foreground) {
              //         return Center(
              //           child: Text(
              //             value == Language.eng ? "En" : "ខ្មែរ",
              //             style: value ==
              //                     Get.put(AccountController()).isEnglish.value
              //                 ? context.text.labelLarge?.copyWith(
              //                     fontSize: 12,
              //                     color: context.isDarkMode
              //                         ? AppColor.secondaryColor
              //                         : Theme.of(context).primaryColor)
              //                 : context.text.labelMedium?.copyWith(
              //                     fontSize: 12, color: AppColor.secondaryColor),
              //           ),
              //         );
              //       }),
              // ),
              ListTile(
                visualDensity: VisualDensity.compact,
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                title:
                    Text(S.current.dark_mode, style: context.text.bodyMedium),
                trailing: Switch.adaptive(
                  value: Get.put(AccountController()).isDarkMode.value,
                  onChanged: (value) {
                    Get.put(AccountController()).isDarkMode.value = value;
                    debugPrint(
                      "Value: ${Get.put(AccountController()).isDarkMode.value}",
                    );
                    Get.changeThemeMode(
                        value ? ThemeMode.dark : ThemeMode.light);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
