import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/onboarding_controller.dart';
import '../widget/responsive/sliver_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => SliderWidget(
        index: Get.put(OnboardingController()).index.value,
        model: Get.put(OnboardingController())
            .list[Get.put(OnboardingController()).index.value],
        onPressed: () => Get.put(OnboardingController()).onNextTo(context),
        onSkipPressed: () =>
            Get.put(OnboardingController()).onSkipPressed(context),
      ),
    ));
  }
}
