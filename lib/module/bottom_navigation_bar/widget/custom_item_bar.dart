// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../gen/fonts.gen.dart';

class ItemBar extends StatelessWidget {
  const ItemBar({
    super.key,
    required this.onTap,
    required this.assetPath,
    required this.activeAssetPath,
    required this.label,
    this.currentIndex = 0,
    this.onTapIndex = 0,
  });
  final void Function() onTap;
  final String assetPath;
  final String activeAssetPath;
  final String label;
  final int currentIndex;
  final int onTapIndex;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: (Get.width - 60) / 4,
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 0),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                  // color: Colors.yellow,
                  height: 32,
                  child: SvgPicture.asset(
                    onTapIndex == currentIndex ? activeAssetPath : assetPath,
                    color: onTapIndex == currentIndex && context.isDarkMode
                        ? Theme.of(context).colorScheme.primary
                        : null,
                  )),
            ),
            Text(
              label,
              style: TextStyle(
                  fontWeight: onTapIndex == currentIndex
                      ? FontWeight.w600
                      : FontWeight.w500,
                  fontFamily: FontFamily.poppinsRegular,
                  fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
