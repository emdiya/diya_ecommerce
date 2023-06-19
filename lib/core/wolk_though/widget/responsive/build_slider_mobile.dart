import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:diya_ecomerce/core/wolk_though/controller/onboarding_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/widget/custom_mybuton.dart';
import '../../model/on_boarding_model/on_boarding_model.dart';
import '../onboard_widget/custom_indicator.dart';

class BuildSliderMobile extends StatelessWidget {
  const BuildSliderMobile({
    super.key,
    required this.onPressed,
    required this.onSkipPressed,
    this.model,
    this.index,
  });
  final void Function() onPressed;
  final void Function() onSkipPressed;
  final OnBoardingModel? model;
  final int? index;
  @override
  Widget build(BuildContext context) {
    final onBoardController = Get.put(OnboardingController());
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          color: Color(0xff1483C2),
          image: DecorationImage(
            image: AssetImage('assets/img/logo_bg.png'),
          ),
        ),
        child: Stack(
          children: [
            index == 0
                ? Padding(
                    padding:
                        const EdgeInsets.only(left: 80, right: 80, top: 150),
                    child: Text(
                      'WELCOME TO DiYA',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              fontWeight: FontWeight.w800,
                              color: AppColor.textWhite),
                    ),
                  )
                : const Text(''),
            Positioned(
              top: index == 0 ? Get.height * 0.25 : Get.height * 0.1,
              child: Padding(
                padding: EdgeInsets.only(bottom: Get.height * 0.02),
                child: AnimatedSwitcher(
                  switchInCurve: Curves.fastOutSlowIn,
                  transitionBuilder: (child, animation) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0.15, 0),
                        end: const Offset(0, 0),
                      ).animate(
                        CurvedAnimation(
                          parent: animation,
                          curve: Curves.bounceInOut,
                        ),
                      ),
                      child: child,
                    );
                  },
                  layoutBuilder: (currentChild, _) => currentChild!,
                  duration: const Duration(milliseconds: 300),
                  child: Image.asset(
                    onBoardController.list[index!].path!,
                    width: index == 0 ? 350 : Get.width * 0.9,
                    height: index == 0 ? 350 : Get.width * 0.9,
                    key: UniqueKey(),
                  ),
                ),
              ),
            ),
            Positioned(
              top: Get.height * 0.5,
              left: Get.width * 0.1,
              right: Get.width * 0.1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: Get.height * 0.02,
                      left: Get.width * 0.02,
                      right: Get.width * 0.02,
                    ),
                    child: Text(
                      model!.title.toString(),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(fontSize: 34, color: AppColor.textWhite),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: Get.width * 0.85,
                      child: Text(
                        model!.subtitle.toString(),
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              fontSize: 18,
                              color: AppColor.textWhite,
                              fontWeight: FontWeight.normal,
                            ),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: Get.height * 0.2,
              child: Padding(
                padding: EdgeInsets.only(top: Get.height * 0.06),
                child: CustomIndicator(
                  currentItem: index ?? 0,
                  count: 3,
                  unselectedColor: Colors.amber,
                  selectedColor: context.isDarkMode ? Colors.red : Colors.white,
                  duration: const Duration(milliseconds: 200),
                  borderRadius: BorderRadius.circular(6),
                  size: const Size(24, 6),
                  unselectedSize: const Size(6, 6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: Get.height * 0.05, left: 20, right: 20),
              child: SafeArea(
                bottom: !kIsWeb ? true : false,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButton.textButton(
                        "Skip",
                        onSkipPressed,
                      ),
                      MyButton.normalButton(
                        index! > 1 ? "Get Started" : "Next",
                        onPressed: onPressed,
                        isDarkMode: context.isDarkMode,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
