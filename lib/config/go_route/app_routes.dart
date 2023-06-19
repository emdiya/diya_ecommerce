// ignore_for_file: constant_identifier_names

abstract class Routes {
  Routes._();
  static const LOGIN_SCREEN = Paths.LOGIN_SCREEN;
  static const REGISTER_SCREEN = Paths.REGISTER_SCREEN;
  static const SCREESPLASH_SCREEN = Paths.SPLASH_SCREEN;
  static const HOME_SCREEN = Paths.HOME_SCREEN;
}

abstract class Paths {
  Paths._();
  static const SPLASH_SCREEN = '/splash_screen';
  static const LOGIN_SCREEN = '/login_screen';
  static const REGISTER_SCREEN = '/register_screen';
  static const HOME_SCREEN = '/home_screen';
}
