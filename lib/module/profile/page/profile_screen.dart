import 'package:diya_ecomerce/config/go_route/app_routes.dart';
import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:diya_ecomerce/gen/fonts.gen.dart';
import 'package:diya_ecomerce/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../config/theme/theme_controller.dart';
import '../widget/custom_profilemenu.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final auth = Get.put(ThemeController());
    return Scaffold(
      backgroundColor: context.isDarkMode
          ? AppColor.primaryColorDark
          : AppColor.bgScaffoldWhite,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () => context.go(Routes.HOME_SCREEN),
          icon: const Icon(LineAwesomeIcons.angle_left),
        ),
        title: Text(
          S.current.profile,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontFamily: FontFamily.ralewaySemiBold,
                fontSize: 18,
              ),
        ),
        actions: [
          IconButton(
            // icon: Icon(_currentIcon),
            // onPressed: _changeIcon(),
            icon: auth.isDarkMode
                ? const Icon(LineAwesomeIcons.moon)
                : const Icon(LineAwesomeIcons.sun),
            onPressed: () => auth.changeTheme(),
            color: AppColor.primaryColor,
            iconSize: 24.0,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              /// -- IMAGE
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                        image: AssetImage("assets/img/my_profile.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: AppColor.primaryColor),
                      child: const Icon(
                        LineAwesomeIcons.alternate_pencil,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                "Em Diya",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text("diya@admin.com",
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 20),

              /// -- BUTTON
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    context.go(Routes.PROFILE_SCREEN + Routes.UPDATE_SCREEN);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primaryColor,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                  child: Text(
                    S.current.edit,
                    style: TextStyle(color: AppColor.textWhite),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),
              //! -- MENU
              ProfileMenuWidget(
                title: S.current.setting,
                icon: LineAwesomeIcons.cog,
                onPress: () {
                  debugPrint("----------> is click Setting");
                  context.go(Routes.PROFILE_SCREEN + Routes.SETTING_SCREEN);
                },
              ),
              ProfileMenuWidget(
                title: S.current.privacy,
                icon: LineAwesomeIcons.alternate_shield,
                onPress: () {
                  debugPrint("----------> is click Setting");
                },
              ),
              ProfileMenuWidget(
                title: S.current.account_information,
                icon: LineAwesomeIcons.user_check,
                onPress: () {
                  debugPrint("----------> is click Setting");
                  context.go(Routes.PROFILE_SCREEN + Routes.ACCOUNT_INFO);
                },
              ),
              const Divider(),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                title: S.current.important_news,
                icon: LineAwesomeIcons.info,
                onPress: () {
                  debugPrint("----------> is click Setting");
                },
              ),
              ProfileMenuWidget(
                  title: S.current.log_out,
                  icon: LineAwesomeIcons.alternate_sign_out,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: () {
                    debugPrint("----------> is Click Logout");
                    Get.defaultDialog(
                      title: "LOGOUT",
                      titleStyle: const TextStyle(fontSize: 20),
                      content: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text("Are you sure, you want to Logout?"),
                      ),
                      confirm: Expanded(
                        child: ElevatedButton(
                          onPressed: () => debugPrint("-----------> is Logout"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent,
                              side: BorderSide.none),
                          child: const Text("Yes"),
                        ),
                      ),
                      cancel: OutlinedButton(
                          onPressed: () => Get.back(), child: const Text("No")),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
