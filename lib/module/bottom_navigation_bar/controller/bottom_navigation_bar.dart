import 'package:get/get.dart';

import '../../../generated/l10n.dart';
import '../model/item_model/item_model.dart';

class BottomNavigationBarController extends GetxController {
  final currentIndex = 0.obs;
  final drawerTapIndex = 0.obs;
  final listItem = <ItemModel>[
    ItemModel(
      imagePath: 'assets/svg/bottom_navigation_bar/home.svg',
      activeImagePath: 'assets/svg/bottom_navigation_bar/home-active.svg',
      label: S.current.home,
    ),
    ItemModel(
      activeImagePath: 'assets/svg/bottom_navigation_bar/favorite.svg',
      imagePath: 'assets/svg/bottom_navigation_bar/favorite-active.svg',
      label: S.current.favorite,
    ),
    ItemModel(
      imagePath: 'assets/svg/bottom_navigation_bar/bell.svg',
      activeImagePath: 'assets/svg/bottom_navigation_bar/bell-actice.svg',
      label: S.current.notification,
    ),
    ItemModel(
      imagePath: 'assets/svg/bottom_navigation_bar/profile.svg',
      activeImagePath: 'assets/svg/bottom_navigation_bar/profile-active.svg',
      label: S.current.profile,
    ),
  ];
  // final listDrawer = <ItemModel>[
  //   ItemModel(
  //     imagePath: Assets.images.svg.drawer.dashboardDrawer,
  //     activeImagePath: Assets.images.svg.drawer.dashboardDrawerGrey,
  //     label: "Dashboard",
  //   ),
  //   ItemModel(
  //     imagePath: Assets.images.svg.drawer.createCaseDrawer,
  //     activeImagePath: Assets.images.svg.drawer.createCaseDrawerGrey,
  //     label: "Create Case",
  //   ),
  //   ItemModel(
  //     imagePath: Assets.images.svg.drawer.myCaseDrawer,
  //     activeImagePath: Assets.images.svg.drawer.myCaseDrawerGrey,
  //     label: "My Case",
  //   ),
  //   ItemModel(
  //     imagePath: Assets.images.svg.drawer.accountDrawer,
  //     activeImagePath: Assets.images.svg.drawer.accountDrawerGrey,
  //     label: "Account",
  //   ),
  // ];
}
