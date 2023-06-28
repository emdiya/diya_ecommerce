import 'package:diya_ecomerce/config/go_route/app_routes.dart';
import 'package:diya_ecomerce/config/go_route/routes/authorization.dart';
import 'package:diya_ecomerce/config/go_route/routes/shell_route.dart';
import 'package:diya_ecomerce/core/wolk_though/page/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

class AppPages {
  AppPages._();
  static const intial = Routes.SCREESPLASH_SCREEN;
  static final AppPages instance = AppPages._();

  GoRouter router = GoRouter(
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: true,
    initialLocation: intial,
    observers: [],
    routes: [
      GoRoute(
        path: Routes.SCREESPLASH_SCREEN,
        builder: (context, state) => const SplashScreen(),
        routes: const [],
      ),
      shellRoute,
      authorizationRouter,
    ],
  );
}
