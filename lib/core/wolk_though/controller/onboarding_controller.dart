import 'package:diya_ecomerce/config/go_route/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../gen/assets.gen.dart';
import '../model/on_boarding_model/on_boarding_model.dart';

class OnboardingController extends GetxController {
  final index = 0.obs;
  var tabIndex = 0.obs;

  final list = <OnBoardingModel>[
    OnBoardingModel(
      title: "",
      subtitle: "",
      path: Assets.img.slider2.path,
    ),
    OnBoardingModel(
      title: "Let’s Start Journey With Nike",
      subtitle: "Smart, Gorgeous & Fashionable Collection Explor Now",
      path: Assets.img.slider2.path,
    ),
    OnBoardingModel(
      title: "You Have the Power To",
      subtitle: "There Are Many Beautiful And Attractive Plants To Your Room",
      path: Assets.img.slider3.path,
    ),
  ];
  void onNextTo(BuildContext context) {
    if (Get.put(OnboardingController()).index.value <
        Get.put(OnboardingController()).list.length - 1) {
      Get.put(OnboardingController()).index.value += 1;
    } else {
      context.push(Routes.LOGIN_SCREEN);
    }
  }

  void onSkipPressed(BuildContext context) {
    context.push(Routes.LOGIN_SCREEN);
  }
}
