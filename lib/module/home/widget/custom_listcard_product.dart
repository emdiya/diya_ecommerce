// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:diya_ecomerce/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:diya_ecomerce/module/home/model/product_model/product_model.dart';

import '../../../constant/app_colors.dart';
import '../../../gen/fonts.gen.dart';

class CustomListCardProduct extends StatelessWidget {
  final AllProductModel? allProductModel;
  final void Function()? onTap;
  final bool isFav;
  const CustomListCardProduct({
    Key? key,
    this.allProductModel,
    this.onTap,
    this.isFav = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return allProductModel == null
        ? Container(
            color: Colors.red,
            width: 100,
            height: 100,
          )
        : Row(
            children: [
              SizedBox(
                width: (context.width / 2) - 30,
                child: AspectRatio(
                  aspectRatio: 157 / 201,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.textWhite,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            width: (context.width / 2) - 20,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.center,
                                image: AssetImage(
                                  allProductModel?.imgUrl ?? '',
                                ),
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 12, top: 12),
                                child: GestureDetector(
                                  onTap: onTap,
                                  child: SvgPicture.asset(
                                    isFav
                                        ? Assets.svg.home.isLove.path
                                        : Assets.svg.home.unLove.path,
                                    height: 18,
                                    width: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: (context.width / 2) - 20,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12, top: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    allProductModel?.recommend ?? '',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium
                                        ?.copyWith(
                                          color: AppColor.primaryColor,
                                          fontFamily: FontFamily.poppinsRegular,
                                        ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    allProductModel?.lable ?? '',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(
                                          fontSize: 16,
                                          color: AppColor.textGrey2,
                                          fontFamily:
                                              FontFamily.ralewaySemiBold,
                                        ),
                                  ),
                                  const SizedBox(height: 15),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$${allProductModel?.price?.toString()}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                color: AppColor.textBlackLight,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        Container(
                                          width: Get.width * 0.1,
                                          height: Get.height,
                                          decoration: BoxDecoration(
                                            color: AppColor.primaryColor,
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              bottomRight: Radius.circular(16),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: AppColor.textWhite,
                                            size: 28,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
            ],
          );
  }
}
