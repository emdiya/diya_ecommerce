import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:diya_ecomerce/generated/l10n.dart';
import 'package:diya_ecomerce/module/profile/controller/profile_controller.dart';
import 'package:diya_ecomerce/utils/widget/custom_setting_card.dart';
import 'package:flutter/material.dart';

class AccountInforScreen extends StatelessWidget {
  const AccountInforScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: AppColor.textWhite,
        title: Text(S.current.account_information),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
            child: CustomCardSetting(
              list: [settingAccountList],
            ),
          ),
        ],
      ),
    );
  }
}
