// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularButton extends StatelessWidget {
  final bool? isScrollTop;
  final String? icon;
  final double? height;
  final double? width;
  // final Color? colorCircular;
  // final Color? colorIcon;
  final void Function()? onTap;

  const CircularButton({
    Key? key,
    this.isScrollTop = false,
    this.icon,
    this.height,
    this.width,
    // this.colorCircular,
    // this.colorIcon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDarkMode = Theme.of(context).brightness.index == 0;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: isScrollTop!
              ? isDarkMode
                  ? Colors.transparent
                  : AppColor.textGrey6
              : isDarkMode
                  ? Theme.of(context).cardTheme.color?.withOpacity(0.9)
                  : AppColor.textGrey6,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Center(
            child: SvgPicture.asset(
              icon ?? 'assets/svg/arrow_back.svg',
              height: 22,
              width: 22,
              colorFilter: ColorFilter.mode(
                isScrollTop!
                    ? isDarkMode
                        ? AppColor.textWhite
                        : AppColor.textBlackLight
                    : isDarkMode
                        ? AppColor.textWhite
                        : AppColor.textBlackLight,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
