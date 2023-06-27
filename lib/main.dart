import 'package:diya_ecomerce/utils/controller/gloabal_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'config/go_route/app_pages.dart';
import 'generated/l10n.dart';

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
        ),
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
