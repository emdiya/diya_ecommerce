import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../gen/fonts.gen.dart';
import '../controller/gloabal_controller.dart';

class CustomCardLanguage extends StatelessWidget {
  final GestureTapCallback? ontap;
  final String? language;
  final bool? select;
  final bool? isDivider;
  final bool? isSvg;
  final bool? isPrefixImage;
  final String? imageUrl;

  const CustomCardLanguage({
    super.key,
    this.language,
    this.select = true,
    this.isDivider = false,
    this.ontap,
    this.isSvg = true,
    this.imageUrl,
    this.isPrefixImage = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontap,
          child: Container(
            color: context.isDarkMode
                ? select!
                    ? AppColor.cardColorDark
                    : Colors.transparent
                : select!
                    ? const Color(0xffF9F9F9)
                    : Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  isPrefixImage!
                      ? Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: isSvg!
                              ? SvgPicture.asset(
                                  imageUrl!,
                                  fit: BoxFit.cover,
                                )
                              : Image.asset(
                                  imageUrl!,
                                  fit: BoxFit.cover,
                                ),
                        )
                      : const SizedBox(),
                  SizedBox(width: isPrefixImage! ? 15 : 0),
                  Container(
                    color: Colors.transparent,
                    height: 56,
                    child: Center(
                      child: Text(
                        language!,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontFamily: App.isEnglish
                                      ? FontFamily.poppinsBold
                                      : FontFamily.kantumruyPro,
                                ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  select == true
                      ? SvgPicture.asset(
                          'assets/svg/check.svg',
                          height: 20,
                          width: 20,
                        )
                      : Container()
                ],
              ),
            ),
          ),
        ),
        if (isDivider == true)
          const Divider(
            thickness: 1,
            height: 1,
            color: Color(0xfff5f5f5),
          ),
      ],
    );
  }
}
