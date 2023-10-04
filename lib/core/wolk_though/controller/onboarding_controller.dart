import 'package:diya_ecomerce/config/go_route/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../gen/assets.gen.dart';
import '../../../generated/l10n.dart';
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
      title: S.current.onboard_txt1,
      subtitle: S.current.onboard_txt1_desp,
      path: Assets.img.slider2.path,
    ),
    OnBoardingModel(
      title: S.current.onboard_txt2,
      subtitle: S.current.onboard_txt2_desp,
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
