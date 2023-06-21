// ignore_for_file: invalid_use_of_protected_member

import 'package:diya_ecomerce/gen/fonts.gen.dart';
import 'package:diya_ecomerce/module/favorite/controller/favorite_controller.dart';
import 'package:diya_ecomerce/module/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/app_colors.dart';
import 'custom_listcard_product.dart';

class CustomListProductBlock extends StatelessWidget {
  const CustomListProductBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final favoriteController = Get.put(FavoriteController());
    return GetBuilder<HomeController>(
        init: Get.find<HomeController>(),
        builder: (controller) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Shoes',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontFamily: FontFamily.ralewayRegular,
                          fontSize: 16,
                        ),
                  ),
                  Text(
                    'See All',
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
                    ...allProductList.asMap().entries.map((e) {
                      return CustomListCardProduct(
                        allProductModel: e.value,
                        isFav: e.value.isFav,
                        onTap: () {
                          bool isContain =
                              favoriteController.favoriteList.contains(e.value);
                          if (!isContain) {
                            favoriteController.favoriteList
                                .add(e.value.copyWith(isFav: true));
                          } else {
                            favoriteController.favoriteList.remove(e.value);
                          }
                          allProductList[e.key] = allProductList[e.key]
                              .copyWith(isFav: !allProductList[e.key].isFav);
                          controller.update();
                        },
                      );
                    }),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
