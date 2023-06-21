import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/controller/home_controller.dart';
import '../../home/widget/custom_listcard_product.dart';
import '../controller/favorite_controller.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteController = Get.put(FavoriteController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Screen'),
      ),
      body: GetBuilder<FavoriteController>(
        init: Get.find<FavoriteController>(),
        builder: (controller) {
          return Column(
            children: [
              ...Get.put(FavoriteController())
                  .favoriteList
                  .asMap()
                  .entries
                  .map((e) {
                return CustomListCardProduct(
                  allProductModel: e.value,
                  isFav: e.value.isFav,
                  onTap: () {
                    favoriteController.favoriteList.remove(e.value);
                    allProductList[e.key] = allProductList[e.key]
                        .copyWith(isFav: !allProductList[e.key].isFav);
                    controller.update();
                  },
                );
              }),
            ],
          );
        },
      ),
    );
  }
}
