import 'package:diya_ecomerce/utils/controller/gloabal_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import 'config/go_route/app_pages.dart';
import 'config/theme/theme.dart';
import 'generated/l10n.dart';

final GetIt globalContext = GetIt.instance;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final globalControll = Get.put(App());
    return GestureDetector(
      onTap: () => unFocus(context),
      child: GetMaterialApp.router(
        onInit: () {
          Get.updateLocale(Locale(globalControll.localLang.value));
        },
        debugShowCheckedModeBanner: false,
        title: 'Diya E-Comerce',
        theme: ThemeData(
          useMaterial3: true,
          // appBarTheme: const AppBarTheme(color: Colors.transparent),
        ),
        //   theme: ThemeBase.theme(),
        themeMode: ThemeMode.system,
        darkTheme: ThemeBase.darkTheme(),
        locale: Get.locale,
        supportedLocales: S.delegate.supportedLocales,
        routeInformationProvider:
            AppPages.instance.router.routeInformationProvider,
        routeInformationParser: AppPages.instance.router.routeInformationParser,
        routerDelegate: AppPages.instance.router.routerDelegate,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],

        builder: (context, widget) {
          if (!globalContext.isRegistered<BuildContext>()) {
            globalContext.registerSingleton<BuildContext>(context);
          }
          return widget!;
        },
      ),
    );
  }
}

// unfocus function
void unFocus(BuildContext context) {
  final FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    FocusManager.instance.primaryFocus!.unfocus();
  }
}
