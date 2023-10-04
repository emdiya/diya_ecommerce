import 'package:diya_ecomerce/gen/fonts.gen.dart';
import 'package:diya_ecomerce/module/home/widget/custom_category_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/widget/custom_button_bagcart.dart';
import '../widget/custom_item_menu.dart';
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
        automaticallyImplyLeading: true,
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SvgPicture.asset(
                  'assets/svg/home/menu.svg',
                  height: 18,
                  width: 25.17,
                ),
              ),
            );
            // IconButton(
            //   icon: const Icon(
            //     Icons.remove_red_eye_sharp,
            //   ),
            //   onPressed: () {
            //     Scaffold.of(context).openDrawer();
            //   },
            //   tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            // );
          },
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CustomButtonAddToCart(),
          ),
        ],
      ),
      // drawer: SizedBox(
      //   width: MediaQuery.of(context).size.width * 1,
      //   child: const Drawer(
      //     backgroundColor: Color(0xff1483C2),
      //     child: CustomItemMenu(),
      //   ),
      // ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
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
      ),
    );
  }
}
