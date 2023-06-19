import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../constant/app_colors.dart';
import '../controller/bottom_navigation_bar.dart';
import '../widget/custom_item_bar.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({
    // required this.child,
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  bool get isMobile =>
      !GetPlatform.isWeb &&
      !GetPlatform.isDesktop &&
      !GetPlatform.isWindows &&
      !GetPlatform.isMacOS;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Visibility(
        visible:
            !context.isTablet && !context.isLargeTablet && !context.isLandscape,
        child: FloatingActionButton(
          onPressed: () {
            // final location = GoRouter.of(context).location;
            // context.push(location + Routes.CREATE_CASE);
          },
          shape: const CircleBorder(),
          child: Icon(
            Icons.add,
            color: AppColor.secondaryColor,
          ),
        ),
      ),
      drawerEnableOpenDragGesture: false,
      // drawer: const MyDrawer(),
      body: child,
      bottomNavigationBar: Visibility(
        visible:
            !context.isTablet && !context.isLargeTablet && !context.isLandscape,
        child: BottomAppBar(
          // ****** APP BAR ******************
          clipBehavior: Clip.antiAlias,
          shape: const CircularNotchedRectangle(),
          notchMargin: 6,
          padding: const EdgeInsets.all(0),
          shadowColor: AppColor.shadowColor,
          elevation: 10,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...Get.put(BottomNavigationBarController())
                  .listItem
                  .asMap()
                  .entries
                  .map((e) => Padding(
                        padding: EdgeInsets.only(
                            left: e.key == 2 ? 30 : 0,
                            right: e.key == 1 ? 30 : 0),
                        child: ItemBar(
                          activeAssetPath: e.value.activeImagePath!,
                          onTap: () {
                            Get.put(BottomNavigationBarController())
                                .currentIndex
                                .value = e.key;
                            onNavigation(context, e.key);
                          },
                          currentIndex: e.key,
                          onTapIndex: calculateSelectedIndex(context),
                          assetPath: e.value.imagePath!,
                          label: e.value.label!,
                        ),
                      ))
                  .toList()
            ],
          ),
        ),
      ),
    );
  }

  // void _tap(BuildContext context) => context.go('/home/$currentIndex}');
  int calculateSelectedIndex(
    BuildContext context,
  ) {
    final String location = GoRouterState.of(context).location;
    switch (location.toLowerCase()) {
      case "/dashboard":
        return 0;
      case "/my-case":
        return 1;
      case "/notification":
        return 2;
      case "/account":
        return 3;
      default:
        return 0;
    }
  }

  void onNavigation(BuildContext context, int index) {
    switch (index) {
      case 0:
        // context.go(Routes.DASHBOARD);
        debugPrint('---------go home');
        break;
      case 1:
        // context.go(Routes.MY_CASE);
        debugPrint('---------go favorite');
        break;
      case 2:
        // context.go(Routes.NOTIFICATION);
        debugPrint('---------go bell');
        break;
      case 3:
        // context.go(Routes.ACCOUNT);
        debugPrint('---------go profile');
        break;
      default:
        // context.go(Routes.DASHBOARD);
        debugPrint('---------go home');
        break;
    }
  }
}
