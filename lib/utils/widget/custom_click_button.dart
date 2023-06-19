// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:diya_ecomerce/gen/fonts.gen.dart';

class CustomClickButton extends StatelessWidget {
  final String? title;
  final double? height;
  final Color? color;
  final String? imgUrl;
  final Color? colortxt;
  const CustomClickButton({
    Key? key,
    this.title,
    this.height = 50,
    this.color,
    this.imgUrl,
    this.colortxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: Get.width,
      decoration: BoxDecoration(
        color: color ?? const Color(0xff0D6EFD),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imgUrl != '' && imgUrl != null)
              SvgPicture.asset(
                imgUrl ?? '',
                height: 22,
                width: 22,
              ),
            const SizedBox(width: 10),
            Text(
              '$title',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontFamily: FontFamily.ralewayRegular,
                    fontWeight: FontWeight.w600,
                    color: colortxt ?? AppColor.textWhite,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
