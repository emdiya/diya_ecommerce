// ignore_for_file: invalid_use_of_protected_member

import 'package:diya_ecomerce/gen/fonts.gen.dart';
import 'package:diya_ecomerce/module/favorite/controller/favorite_controller.dart';
import 'package:diya_ecomerce/module/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/app_colors.dart';
import '../../../generated/l10n.dart';
import '../../../utils/controller/gloabal_controller.dart';
import '../../../utils/widget/custom_empty_state.dart';
import 'custom_listcard_product.dart';

class CustomCardSwitchCategoory extends StatelessWidget {
  final String category;
  const CustomCardSwitchCategoory({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final newList = allProductList
        .where((e) => e.category?.toLowerCase() == category.toLowerCase())
        .toList();

    final favoriteController = Get.put(FavoriteController());
    return GetBuilder<HomeController>(
        init: Get.find<HomeController>(),
        builder: (controller) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.current.popular,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontFamily: Get.put(App().localLang.value == "en")
                              ? FontFamily.ralewayRegular
                              : FontFamily.kantumruyPro,
                          fontSize: 16,
                        ),
                  ),
                  Text(
                    S.current.seeall,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontSize: 12,
                          color: AppColor.primaryColor,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...newList.asMap().entries.map(
                      (e) {
                        {
                          debugPrint("e.value: $e");
                          return CustomListCardProduct(
                            allProductModel: e.value,
                            isFav: e.value.isFav,
                            onTap: () {
                              bool isContain = favoriteController.favoriteList
                                  .contains(e.value);
                              if (!isContain) {
                                favoriteController.favoriteList
                                    .add(e.value.copyWith(isFav: true));
                              } else {
                                favoriteController.favoriteList.remove(e.value);
                              }
                              allProductList[e.key] = allProductList[e.key]
                                  .copyWith(
                                      isFav: !allProductList[e.key].isFav);
                              controller.update();
                            },
                          );
                        }

                        // return const SizedBox.shrink();
                      },
                    ),
                    if (newList.isEmpty) const CustomEmptySate()
                  ],
                ),
              ),
            ],
          );
        });
  }
}
