import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:diya_ecomerce/generated/l10n.dart';
import 'package:diya_ecomerce/module/profile/controller/profile_controller.dart';
import 'package:diya_ecomerce/utils/widget/custom_setting_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountInforScreen extends StatelessWidget {
  const AccountInforScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          context.isDarkMode ? AppColor.primaryColorDark : Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: context.isDarkMode
            ? AppColor.primaryColorDark
            : Colors.grey.shade100,
        title: Text(S.current.account_information),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
        child: Column(
          children: [
            const SizedBox(height: 10),
            SizedBox(
              height: 290,
              child: CustomCardSetting(
                list: accountinfo,
                onTap: (index) {
                  debugPrint("------is index $index");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
