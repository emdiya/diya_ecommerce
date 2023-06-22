import 'package:flutter/material.dart';

import '../../../constant/app_colors.dart';
import '../../../gen/fonts.gen.dart';
import 'custom_banner_slider.dart';

class CustomNewArrivalBlock extends StatelessWidget {
  const CustomNewArrivalBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'New Arrival',
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
        //! Bannner Slider
        // CarouselSlider(
        //   disableGesture: false,
        //   options: CarouselOptions(
        //     height: 100,
        //     aspectRatio: 0.9,
        //     autoPlay: true,
        //     viewportFraction: 1,
        //   ),
        //   items: [1, 2, 3, 4, 5].map((i) {
        //     return const CustomBannerSlider();
        //   }).toList(),
        // ),
        const CustomBannerSlider()
      ],
    );
  }
}
