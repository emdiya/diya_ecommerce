import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 78, left: 36),
            child: Container(
              height: 96,
              width: 96,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.yellow),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Emmanuel Oyiboke',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.w500, color: AppColor.textWhite),
          ),
          const SizedBox(
            height: 57,
          ),
          Row(
            children: [
              Icon(
                Icons.person_2_outlined,
                color: AppColor.textWhite,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Profile',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColor.textWhite, fontWeight: FontWeight.w500),
              )
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Row(
            children: [
              Icon(
                Icons.shopping_basket_outlined,
                color: AppColor.textWhite,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'My Cart',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColor.textWhite, fontWeight: FontWeight.w500),
              )
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Row(
            children: [
              Icon(
                Icons.person_2_outlined,
                color: AppColor.textWhite,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Profile',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColor.textWhite, fontWeight: FontWeight.w500),
              )
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Row(
            children: [
              Icon(
                Icons.person_2_outlined,
                color: AppColor.textWhite,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Profile',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColor.textWhite, fontWeight: FontWeight.w500),
              )
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Row(
            children: [
              Icon(
                Icons.person_2_outlined,
                color: AppColor.textWhite,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Profile',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColor.textWhite, fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }
}
