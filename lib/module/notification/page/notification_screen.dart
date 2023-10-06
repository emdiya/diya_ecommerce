import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          context.isDarkMode ? AppColor.primaryColorDark : Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: context.isDarkMode
            ? AppColor.primaryColorDark
            : Colors.grey.shade100,
        title: const Text("Notification"),
      ),
    );
  }
}
