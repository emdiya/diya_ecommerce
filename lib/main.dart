import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/go_route/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => unFocus(context),
      child: GetMaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Diya E-Comerce',
        theme: ThemeData(
          useMaterial3: true,
        ),
        routeInformationProvider:
            AppPages.instance.router.routeInformationProvider,
        routeInformationParser: AppPages.instance.router.routeInformationParser,
        routerDelegate: AppPages.instance.router.routerDelegate,
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
