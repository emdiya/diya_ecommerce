// ignore_for_file: constant_identifier_names

abstract class Routes {
  Routes._();
  static const LOGIN_SCREEN = Paths.LOGIN_SCREEN;
  static const REGISTER_SCREEN = Paths.REGISTER_SCREEN;
  static const SCREESPLASH_SCREEN = Paths.SPLASH_SCREEN;
  static const HOME_SCREEN = Paths.HOME_SCREEN;
  static const FAVORITE_SCREEN = Paths.FAVORITE_SCREEN;
  static const NOTIFICATION_SCREEN = Paths.NOTIFICATION_SCREEN;
  static const PROFILE_SCREEN = Paths.PROFILE_SCREEN;
}

abstract class Paths {
  Paths._();
  static const SPLASH_SCREEN = '/splash-screen';
  static const LOGIN_SCREEN = '/login';
  static const REGISTER_SCREEN = '/register';
  static const HOME_SCREEN = '/home';
  static const FAVORITE_SCREEN = '/favorite';
  static const NOTIFICATION_SCREEN = '/notification';
  static const PROFILE_SCREEN = '/profile';
}