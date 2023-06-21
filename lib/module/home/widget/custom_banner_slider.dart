import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constant/app_colors.dart';

class CustomBannerSlider extends StatelessWidget {
  const CustomBannerSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Stack(
        children: [
          BackdropFilter(
            blendMode: BlendMode.srcIn,
            filter: ImageFilter.blur(
              sigmaX: 1.5,
              sigmaY: 1.5,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.primaryColor.withOpacity(0.9),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
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
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                ),
                Text(
                  '15% OFF',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
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
            ),
          ),
        ],
      ),
    );
  }
}
