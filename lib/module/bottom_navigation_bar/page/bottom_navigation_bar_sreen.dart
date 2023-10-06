import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../../config/go_route/app_routes.dart';
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
          backgroundColor: AppColor.primaryColor,
          splashColor: Colors.blue.shade900,
          onPressed: () {
            // final location = GoRouter.of(context).location;
            // context.push(location + Routes.CREATE_CASE);
          },
          shape: const CircleBorder(),
          child: SvgPicture.asset('assets/svg/bottom_navigation_bar/shop.svg'),
        ),
      ),
      // drawerEnableOpenDragGesture: false,
      // drawer: const SettingScreen(),
      body: child,
      bottomNavigationBar: Visibility(
        visible:
            !context.isTablet && !context.isLargeTablet && !context.isLandscape,
        child: BottomAppBar(
          // ****** APP BAR ******************
          clipBehavior: Clip.antiAlias,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          padding: const EdgeInsets.all(0),
          shadowColor: AppColor.primaryColor,
          color: context.isDarkMode
              ? AppColor.primaryColorDark
              : AppColor.textWhite,
          surfaceTintColor: Colors.transparent,
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
                  .map(
                    (e) => Padding(
                      padding: EdgeInsets.only(
                          left: e.key == 2 ? 30 : 0,
                          right: e.key == 1 ? 30 : 0),
                      child: ItemBar(
                        onTap: () {
                          Get.put(BottomNavigationBarController())
                              .currentIndex
                              .value = e.key;
                          debugPrint(
                              '-------is Tap ${Get.put(BottomNavigationBarController()).currentIndex.value}');
                          onNavigation(context, e.key);
                        },
                        currentIndex: e.key,
                        onTapIndex: calculateSelectedIndex(context),
                        activeAssetPath: e.value.activeImagePath!,
                        assetPath: e.value.imagePath!,
                        label: e.value.label!,
                      ),
                    ),
                  )
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
      case "/home":
        return 0;
      case "/favorite":
        return 1;
      case "/notification":
        return 2;
      case "/profile":
        return 3;
      default:
        return 0;
    }
  }

  void onNavigation(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go(Routes.HOME_SCREEN);
        debugPrint('---------go home');
        break;
      case 1:
        debugPrint('---------go favorite');
        context.go(Routes.FAVORITE_SCREEN);
        break;
      case 2:
        context.go(Routes.NOTIFICATION_SCREEN);
        break;
      case 3:
        debugPrint('---------go profile');
        context.go(Routes.PROFILE_SCREEN);
        break;
      default:
        debugPrint('---------go home');
        context.go(Routes.HOME_SCREEN);
        break;
    }
  }
}
