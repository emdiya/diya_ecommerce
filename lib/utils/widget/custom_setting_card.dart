import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCardSetting extends StatelessWidget {
  const CustomCardSetting({
    super.key,
    required this.list,
    this.onTap,
  });

  final List list;
  final ValueChanged<int>? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: context.isDarkMode
            ? AppColor.cardColorDark.withOpacity(0.2)
            : AppColor.textWhite,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColor.textWhite,
          style: BorderStyle.solid,
          strokeAlign: 1,
          width: 0.3,
        ),
      ),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () => onTap?.call(index),
                child: Container(
                  color: Colors.transparent,
                  height: 25,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              list[index].iconData,
                              color: AppColor.primaryColor,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "${list[index].label}",
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: AppColor.primaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                child: Divider(
                  height: 1,
                  color: Colors.grey.shade100,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
