import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension MyColor on Color {
  MaterialColor getMaterialColor() {
    final Map<int, Color> shades = {
      50: const Color.fromRGBO(136, 14, 79, .1),
      100: const Color.fromRGBO(136, 14, 79, .2),
      200: const Color.fromRGBO(136, 14, 79, .3),
      300: const Color.fromRGBO(136, 14, 79, .4),
      400: const Color.fromRGBO(136, 14, 79, .5),
      500: const Color.fromRGBO(136, 14, 79, .6),
      600: const Color.fromRGBO(136, 14, 79, .7),
      700: const Color.fromRGBO(136, 14, 79, .8),
      800: const Color.fromRGBO(136, 14, 79, .9),
      900: const Color.fromRGBO(136, 14, 79, 1),
    };
    return MaterialColor(value, shades);
  }
}

extension Context on BuildContext {
  TextTheme get text {
    return Theme.of(this).textTheme;
  }

  pushToSubRoute(String route) {
    final location = GoRouter.of(this).location;
    push(location + route);
  }

  T responsive<T>(
    T defaultVal,
    double d, {
    T? sm,
    T? md,
    T? lg,
    T? xl,
  }) {
    final wd = MediaQuery.of(this).size.width;
    return wd >= 1280
        ? (xl ?? lg ?? md ?? sm ?? defaultVal)
        : wd >= 1024
            ? (lg ?? md ?? sm ?? defaultVal)
            : wd >= 768
                ? (md ?? sm ?? defaultVal)
                : wd >= 640
                    ? (sm ?? defaultVal)
                    : defaultVal;
  }

  T buildResponsive<T>({
    required T mobile,
    required T tablet,
    required T desktop,
    T? largeDesktop,
  }) {
    // var deviceWidth = mediaQuerySize.shortestSide;
    // if (GetPlatform.isDesktop) {
    //   deviceWidth = mediaQuerySize.width;
    // }
    // if (deviceWidth >= 1200 && desktop != null) {
    //   return desktop;
    // } else if (deviceWidth >= 600 && tablet != null) {
    //   return tablet;
    // } else if (deviceWidth < 300 && watch != null) {
    //   return watch;
    // } else {
    //   return mobile;
    // }
    final wd = MediaQuery.of(this).size.width;
    return wd >= 1280
        ? (largeDesktop ?? desktop ?? tablet ?? mobile)
        : wd >= 1200
            ? (desktop ?? tablet ?? mobile)
            : wd >= 768
                ? (tablet ?? mobile)
                : wd >= 640
                    ? (mobile)
                    : mobile;
  }
}
