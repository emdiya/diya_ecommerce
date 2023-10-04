import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant/app_colors.dart';

class SlildeMenuTitle extends StatelessWidget {
  final String? icon;
  final String? title;
  const SlildeMenuTitle({
    super.key,
    this.icon,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {},
          leading: SizedBox(
            height: 25,
            child: SvgPicture.asset(
              icon ?? '',
              // Assets.svg.bottomNavigationBar.profile.path
              colorFilter:
                  ColorFilter.mode(AppColor.textWhite, BlendMode.srcIn),
            ),
          ),
          title: Text(title ?? '',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColor.textWhite, fontWeight: FontWeight.w500)),
        ),
      ],
    );
  }
}

// List<Rive> SlildeMenus=[];