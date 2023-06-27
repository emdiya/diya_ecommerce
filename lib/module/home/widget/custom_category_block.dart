import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:diya_ecomerce/gen/fonts.gen.dart';
import 'package:diya_ecomerce/module/home/controller/home_controller.dart';
import 'package:diya_ecomerce/utils/controller/gloabal_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../generated/l10n.dart';
import 'custom_cardswitch_category.dart';

class CustomSelectCategory extends StatefulWidget {
  const CustomSelectCategory({
    super.key,
  });

  @override
  State<CustomSelectCategory> createState() => _CustomSelectCategoryState();
}

class _CustomSelectCategoryState extends State<CustomSelectCategory> {
  PageController controller = PageController();

  final homeController = Get.put(HomeController());
  final globleController = Get.put(App());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.current.selectCategory,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontFamily: globleController.localLang.value == 'en'
                      ? FontFamily.ralewaySemiBold
                      : FontFamily.kantumruyPro,
                ),
          ),
          const SizedBox(height: 24),
          //! List View Title Category
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...cateList.asMap().entries.map(
                  (e) {
                    return GestureDetector(
                      onTap: () {
                        homeController.index.value = e.key;
                        homeController.category.value = e.value.en;
                      },
                      child: AnimatedContainer(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 14),
                        margin: e.key < cateList.length - 1
                            ? const EdgeInsets.only(right: 20)
                            : null, //no margin at last index
                        duration: const Duration(milliseconds: 50),
                        curve: Curves.linear,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: homeController.index.value == e.key
                              ? AppColor.primaryColor
                              : AppColor.textWhite,
                        ),
                        // alignment: Alignment.center,
                        child: Text(
                          Get.put(App()).localLang.value == 'en'
                              ? e.value.en
                              : e.value.kh,
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: homeController.index.value == e.key
                                        ? AppColor.textWhite
                                        : AppColor.textBlackLight,
                                  ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          //!Switch Here
          CustomCardSwitchCategoory(category: homeController.category.value),
        ],
      ),
    );
  }
}
