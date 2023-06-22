import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant/app_colors.dart';

class Infocard extends StatelessWidget {
  final String? icon;
  final String? title;
  const Infocard({
    super.key,
    this.icon,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon ?? '',
          colorFilter: ColorFilter.mode(AppColor.textWhite, BlendMode.srcIn),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          title ?? '',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: AppColor.textWhite, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
