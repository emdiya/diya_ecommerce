import 'package:diya_ecomerce/gen/fonts.gen.dart';
import 'package:diya_ecomerce/module/home/widget/custom_category_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/widget/custom_button_bagcart.dart';
import '../widget/custom_newarrival_block.dart';
import '../widget/custom_search_block.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F9),
      extendBody: true,
      appBar: AppBar(
        backgroundColor: const Color(0xffF7F7F9),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "DM Store",
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.ralewayBold,
              ),
        ),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: SvgPicture.asset(
            'assets/svg/home/menu.svg',
            height: 18,
            width: 25.17,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CustomButtonAddToCart(),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchBlock(),
            SizedBox(height: 24),
            CustomSelectCategory(),
            SizedBox(height: 24),
            CustomNewArrivalBlock(),
          ],
        ),
      ),
    );
  }
}
