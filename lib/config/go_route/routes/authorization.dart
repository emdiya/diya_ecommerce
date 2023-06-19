import 'package:diya_ecomerce/config/go_route/app_routes.dart';
import 'package:diya_ecomerce/core/auth/signin/page/login_screen.dart';
import 'package:diya_ecomerce/core/auth/signin/page/register_screen.dart';
import 'package:diya_ecomerce/utils/helper/extension/string_extension.dart';
import 'package:go_router/go_router.dart';

final authorizationRouter = GoRoute(
  path: Routes.LOGIN_SCREEN,
  builder: (context, state) => const LogInScreen(),
  routes: [
    GoRoute(
      path: Routes.REGISTER_SCREEN.removeFirst(),
      builder: (context, state) => const RegisterScreen(),
      routes: const [],
    )
  ],
);
