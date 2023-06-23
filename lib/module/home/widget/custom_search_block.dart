import 'package:diya_ecomerce/module/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constant/app_colors.dart';
import '../../../generated/l10n.dart';

class CustomSearchBlock extends StatelessWidget {
  const CustomSearchBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 52,
            width: Get.width,
            decoration: BoxDecoration(
                color: AppColor.textWhite,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                      color: AppColor.textGrey.withOpacity(0.1),
                      blurRadius: 5,
                      spreadRadius: 0.1,
                      offset: const Offset(0, 2))
                ]),
            child: TextFormField(
              controller: Get.put(HomeController().searchtxt.value),
              decoration: InputDecoration(
                prefixIcon: Container(
                  width: 25,
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          'assets/svg/home/search.svg',
                          width: 22,
                        ),
                      ],
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(
                    color: AppColor.textWhite,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(
                    width: 0.8,
                    color: AppColor.primaryColor,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(
                    color: AppColor.textWhite,
                  ),
                ),
                isDense: true,
                fillColor: AppColor.textWhite,
                hintText: '  ${S.current.lookingForShoe}',
                hintStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 52,
            width: 52,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                'assets/svg/home/filter.svg',
                height: 22,
                width: 22,
              ),
            ),
          ),
        )
      ],
    );
  }
}
