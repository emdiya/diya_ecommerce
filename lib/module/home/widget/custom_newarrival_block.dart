import 'package:diya_ecomerce/utils/controller/gloabal_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/app_colors.dart';
import '../../../gen/fonts.gen.dart';
import '../../../generated/l10n.dart';
import 'custom_banner_slider.dart';

class CustomNewArrivalBlock extends StatelessWidget {
  const CustomNewArrivalBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final globleController = Get.put(App());
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              S.current.newarrival,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontFamily: globleController.localLang.value == 'en'
                        ? FontFamily.ralewayRegular
                        : FontFamily.kantumruyPro,
                    fontSize: 16,
                  ),
            ),
            Text(
              S.current.seeall,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontSize: 12,
                    color: AppColor.primaryColor,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        //! Bannner Slider

        const CustomBannerSlider()
      ],
    );
  }
}
