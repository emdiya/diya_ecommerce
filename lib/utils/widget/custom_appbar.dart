import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:diya_ecomerce/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

PreferredSizeWidget customAppbar({
  required BuildContext context,
  final Widget? leading,
  final List<Widget>? actions,
  final double? elevation,
  final String? title,
  final bool? centerTitle,
  final String? leadingTitle,
  final double? leadingWith,
  final IconData? icons,
  final Color? bacbackgroundColor,
  final Function()? onTapLeading,
  final Function()? onTapAction,
  final double? toolbarHeight,
  final String? iconAction,
  final bool? automaticallyImplyLeading,
}) {
  return AppBar(
    automaticallyImplyLeading: automaticallyImplyLeading ?? false,
    backgroundColor: bacbackgroundColor,
    leading: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: onTapLeading,
        child: Container(
          height: 44,
          width: 44,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.textWhite,
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.5),
            child: SvgPicture.asset(
              'assets/svg/arrow_back.svg',
              height: 5.5,
              width: 11.5,
            ),
          ),
        ),
      ),
    ),
    title: Text(
      title ?? '',
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontFamily: FontFamily.ralewaySemiBold,
          ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: GestureDetector(
          onTap: onTapLeading,
          child: Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.textWhite,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: onTapAction,
                child: SvgPicture.asset(
                  iconAction ?? 'assets/svg/fav.svg',
                  height: 18,
                  width: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
    elevation: elevation ?? 1.0,
    centerTitle: centerTitle,
    leadingWidth: 65,
    toolbarHeight: toolbarHeight,
  );
}
