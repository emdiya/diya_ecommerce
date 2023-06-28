import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../../../constant/app_colors.dart';
import '../../../gen/assets.gen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: 288,
        color: const Color(0xff1483C2),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 78, left: 5),
                child: Container(
                  height: 96,
                  width: 96,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      Assets.img.profile.path,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  'Rorn Marin',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.w500, color: AppColor.textWhite),
                ),
              ),
              const SizedBox(
                height: 57,
              ),
              const SlildeMenuTitle(),
              // Infocard(
              //     icon: Assets.svg.bottomNavigationBar.profile.path,
              //     title: 'Profile'),
              // const SizedBox(
              //   height: 34,
              // ),
              // Infocard(
              //     icon: Assets.svg.bottomNavigationBar.shop.path,
              //     title: 'My Cart'),
              // const SizedBox(
              //   height: 34,
              // ),
              // Infocard(icon: Assets.svg.favorite.path, title: 'Favorite'),
              // const SizedBox(
              //   height: 34,
              // ),
              // Infocard(icon: Assets.svg.car.path, title: 'Orders'),
              // const SizedBox(
              //   height: 34,
              // ),
              // Infocard(
              //     icon: Assets.svg.notification.path, title: 'Notification'),
              // const SizedBox(
              //   height: 34,
              // ),
              // Infocard(icon: Assets.svg.setting.path, title: 'Setting'),
              // const SizedBox(
              //   height: 34,
              // ),
              // Container(
              //   width: double.infinity,
              //   height: 2,
              //   color: Colors.white,
              // ),
              // const SizedBox(
              //   height: 34,
              // ),
              // Infocard(icon: Assets.svg.logout.path, title: 'Sign Out'),
            ],
          ),
        ),
      ),
    );
  }
}

class SlildeMenuTitle extends StatelessWidget {
  const SlildeMenuTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {},
          leading: SizedBox(
            height: 25,
            child: RiveAnimation.asset(
              Assets.svg.bottomNavigationBar.profile.path,
            
            ),
          ),
          title: Text('Profile',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColor.textWhite, fontWeight: FontWeight.w500)),
        ),
      ],
    );
  }
}
