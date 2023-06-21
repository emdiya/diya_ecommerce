import 'package:diya_ecomerce/config/go_route/app_pages.dart';
import 'package:diya_ecomerce/config/go_route/app_routes.dart';
import 'package:diya_ecomerce/module/bottom_navigation_bar/page/bottom_navigation_bar_sreen.dart';
import 'package:diya_ecomerce/module/favorite/page/favorite_screen.dart';
import 'package:diya_ecomerce/module/home/page/home_screen.dart';
import 'package:go_router/go_router.dart';

import '../../../module/notification/page/notification_screen.dart';
import '../../../module/profile/page/profile_screen.dart';

final shellRoute = ShellRoute(
  navigatorKey: shellNavigatorKey,
  builder: (context, state, child) {
    return BottomNavBarScreen(child: child);
  },
  routes: [
    GoRoute(
      parentNavigatorKey: shellNavigatorKey,
      path: Routes.HOME_SCREEN,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      parentNavigatorKey: shellNavigatorKey,
      path: Routes.FAVORITE_SCREEN,
      builder: (context, state) => const FavoriteScreen(),
    ),
    GoRoute(
      parentNavigatorKey: shellNavigatorKey,
      path: Routes.NOTIFICATION_SCREEN,
      builder: (context, state) => const NotificationScreen(),
    ),
    GoRoute(
      parentNavigatorKey: shellNavigatorKey,
      path: Routes.PROFILE_SCREEN,
      builder: (context, state) => const ProfileScreen(),
    ),
  ],
);
