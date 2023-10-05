import 'package:diya_ecomerce/config/go_route/app_pages.dart';
import 'package:diya_ecomerce/config/go_route/app_routes.dart';
import 'package:diya_ecomerce/module/bottom_navigation_bar/page/bottom_navigation_bar_sreen.dart';
import 'package:diya_ecomerce/module/favorite/page/favorite_screen.dart';
import 'package:diya_ecomerce/module/home/page/home_screen.dart';
import 'package:diya_ecomerce/module/profile/page/account_info_screen.dart';
import 'package:diya_ecomerce/module/profile/page/profile_screen.dart';
import 'package:diya_ecomerce/module/profile/page/setting/darkmode_screen.dart';
import 'package:diya_ecomerce/module/profile/page/setting_screen.dart';
import 'package:diya_ecomerce/module/profile/page/updateprofile_screen.dart';
import 'package:diya_ecomerce/utils/helper/extension/string_extension.dart';
import 'package:go_router/go_router.dart';

import '../../../module/notification/page/notification_screen.dart';

final shellRoute = ShellRoute(
  navigatorKey: shellNavigatorKey,
  builder: (context, state, child) {
    return BottomNavBarScreen(child: child);
  },
  routes: [
    GoRoute(
      parentNavigatorKey: shellNavigatorKey,
      path: Routes.HOME_SCREEN,
      pageBuilder: (context, state) {
        return const NoTransitionPage(
          child: HomeScreen(),
        );
      },
    ),
    GoRoute(
      parentNavigatorKey: shellNavigatorKey,
      path: Routes.FAVORITE_SCREEN,
      pageBuilder: (context, state) {
        return const NoTransitionPage(
          child: FavoriteScreen(),
        );
      },
    ),
    GoRoute(
      parentNavigatorKey: shellNavigatorKey,
      path: Routes.NOTIFICATION_SCREEN,
      pageBuilder: (context, state) {
        return const NoTransitionPage(
          child: NotificationScreen(),
        );
      },
    ),
    GoRoute(
      parentNavigatorKey: shellNavigatorKey,
      path: Routes.PROFILE_SCREEN,
      pageBuilder: (context, state) {
        return const NoTransitionPage(
          child: ProfileScreen(),
        );
      },
      routes: [
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: Routes.UPDATE_SCREEN.removeFirst(),
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: UpdateProfileScreen(),
            );
          },
        ),
        GoRoute(
            parentNavigatorKey: rootNavigatorKey,
            path: Routes.SETTING_SCREEN.removeFirst(),
            pageBuilder: (context, state) {
              return const NoTransitionPage(
                child: SettingScreen(),
              );
            },
            routes: [
              GoRoute(
                parentNavigatorKey: rootNavigatorKey,
                path: Routes.DARKMODE_SCREEN.removeFirst(),
                pageBuilder: (context, state) {
                  return const NoTransitionPage(
                    child: DarkModeScreen(),
                  );
                },
              ),
            ]),
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: Routes.ACCOUNT_INFO.removeFirst(),
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: AccountInforScreen(),
            );
          },
        ),
      ],
    ),
  ],
);
