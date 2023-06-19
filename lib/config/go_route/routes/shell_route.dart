import 'package:diya_ecomerce/config/go_route/app_pages.dart';
import 'package:diya_ecomerce/config/go_route/app_routes.dart';
import 'package:diya_ecomerce/module/bottom_navigation_bar/page/bottom_navigation_bar_sreen.dart';
import 'package:diya_ecomerce/module/home/page/home_screen.dart';
import 'package:go_router/go_router.dart';

final shellRoute = ShellRoute(
  navigatorKey: shellNavigatorKey,
  builder: (context, state, child) {
    return BottomNavBarScreen(child: child);
  },
  routes: [
    GoRoute(
      path: Routes.HOME_SCREEN,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
