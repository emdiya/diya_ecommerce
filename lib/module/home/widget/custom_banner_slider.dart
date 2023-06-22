import 'package:carousel_slider/carousel_slider.dart';
import 'package:diya_ecomerce/module/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../constant/app_colors.dart';

class CustomBannerSlider extends StatelessWidget {
  const CustomBannerSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return Stack(
      children: [
        Container(
          width: Get.width,
          height: 95,
          decoration: BoxDecoration(
            color: AppColor.textWhite,
            image: const DecorationImage(
              fit: BoxFit.fitWidth,
              colorFilter: ColorFilter.mode(
                Colors.white,
                BlendMode.dstIn,
              ),
              image: AssetImage('assets/img/cam_skyline.png'),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.primaryColor.withOpacity(0.9),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (context, i, realIndex) {
            return Stack(
              children: [
                Positioned(
                  right: 60,
                  top: 1,
                  bottom: 1,
                  left: -100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Summer Sale',
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                      ).animate().fadeIn(),
                      Text(
                        '15% OFF',
                        style:
                            Theme.of(context).textTheme.headlineLarge?.copyWith(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                      ).animate().fade().moveX(
                            delay: const Duration(
                              milliseconds: 100,
                            ),
                          ),
                    ],
                  ),
                ),
                Positioned(
                  right: -110,
                  top: 1,
                  bottom: 1,
                  left: 100,
                  child: Image.asset(
                    'assets/img/slider2.png',
                    height: 500,
                    width: 500,
                  ).animate().moveY(
                        delay: const Duration(
                          milliseconds: 100,
                        ),
                      ),
                ),
                Positioned(
                  right: 150,
                  top: 55,
                  bottom: 20,
                  left: -190,
                  child: SvgPicture.asset(
                    'assets/svg/home/star.svg',
                  ),
                ),
                Positioned(
                  right: 30,
                  top: 10,
                  bottom: 65,
                  left: 1,
                  child: SvgPicture.asset(
                    'assets/svg/home/star.svg',
                  ),
                ),
                Positioned(
                  right: 1,
                  top: 65,
                  bottom: 10,
                  left: 20,
                  child: SvgPicture.asset(
                    'assets/svg/home/star.svg',
                  ),
                ),
                Positioned(
                  right: -150,
                  top: 15,
                  bottom: 60,
                  left: 195,
                  child: SvgPicture.asset(
                    'assets/svg/home/star.svg',
                  ),
                ),
                Positioned(
                  right: -50,
                  top: 20,
                  bottom: 40,
                  left: 50,
                  child: SvgPicture.asset(
                    'assets/svg/home/new-arrival.svg',
                  ).animate().flipV(
                        delay: const Duration(
                          milliseconds: 100,
                        ),
                      ),
                ),
              ],
            );
          },
          options: CarouselOptions(
            height: 100,
            autoPlay: true,
            onPageChanged: (i, reason) {
              homeController.indexSwap.value = i;
            },
            viewportFraction: 1,
          ),
        ),
        Positioned(
          top: 78,
          left: 160,
          right: 160,
          bottom: 10,
          child: Obx(
            () => Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: homeController.indexSwap.value,
                  count: 3,
                  effect: WormEffect(
                    type: WormType.thinUnderground,
                    dotHeight: 8,
                    dotWidth: 8,
                    dotColor: AppColor.textGrey3,
                    activeDotColor: AppColor.textWhite,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],

      // }).toList(),
      // ),
    );
  }
}
