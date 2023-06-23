import 'package:diya_ecomerce/config/go_route/app_routes.dart';
import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:diya_ecomerce/utils/widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../generated/l10n.dart';
import '../../home/controller/home_controller.dart';
import '../controller/favorite_controller.dart';
import '../widget/custom_favoritecard.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteController = Get.put(FavoriteController());
    return Scaffold(
      backgroundColor: AppColor.textGrey6,
      appBar: customAppbar(
        onTapLeading: () {
          context.go(Routes.HOME_SCREEN);
        },
        context: context,
        title: S.current.favorite,
        centerTitle: true,
        bacbackgroundColor: AppColor.textWhite,
      ),
      body: GetBuilder<FavoriteController>(
        init: Get.find<FavoriteController>(),
        builder: (controller) {
          return GridView.builder(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 157 / 201,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,

              crossAxisCount: 2, // Number of columns in the grid
            ),
            itemCount: favoriteController.favoriteList.length,
            itemBuilder: (_, index) {
              return CustomFavoriteCard(
                allProductModel: favoriteController.favoriteList[index],
                isFav: favoriteController.favoriteList[index].isFav,
                onTap: () {
                  final currentIndex =
                      favoriteController.favoriteList[index].id;
                  favoriteController.favoriteList
                      .remove(favoriteController.favoriteList[index]);
                  //remove  fav
                  final idx = allProductList
                      .indexWhere((element) => element.id == currentIndex);

                  allProductList[idx] = allProductList[idx]
                      .copyWith(isFav: !allProductList[idx].isFav);
                  controller.update();
                },
              );
            },
          );
          //
        },
      ),
    );
  }
}
