import 'package:flutter/material.dart';

extension AppColor on Color {
  //==app color===================
  static var primaryColor = const Color(0xff0D6EFD);
  static var secondaryColor = const Color(0xffFFFFFF);
  static var thirdColor = const Color(0xFF1F8FE5);
  static var buttonColor = const Color(0xff12B8E2);
  static var backColor = const Color(0xffF2F2F2);
  static var backColorDark = const Color(0xff121212);
  static var cardColorDark = const Color(0xff1E1E1E);
  static var disableColor = const Color(0xffF5F5F5);
  static var hoverColor = const Color(0xff12B8E2);
  static var hoverDeepColor = Colors.blue[800];
  static var shadowColor = const Color(0xff0a0b091a);
  static var goldVIPcolor = const Color(0xffCDA053);
  static var deepblue = const Color(0xff0B2F8B);
  static var bgScaffoldWhite = Colors.grey.shade100;
  //== dark Color===
  static var primaryColorDark = const Color(0xff0B1D31);
  static var textFieldFillColorDark = const Color(0xff2A2A2A);
  //==app text color===================

  static var textColor = const Color(0xff010D10);
  static var textMediumBlack = const Color(0xff1A1D1E);
  static var textBlackLight = const Color(0xff2B2B2B);
  static var textGrey = const Color(0xff9D9FA2);
  static var textGrey1 = const Color(0xff707B81);
  static var textGrey2 = const Color(0xff6A6A6A);
  static var textGrey3 = const Color(0xff828282);
  static var textGrey5 = const Color(0xffE0E0E0);
  static var textGrey6 = const Color(0xffF7F7F9);

  static var subTextColor = const Color(0xffF2F2F2);
  static var textWhite = const Color(0xffFFFFFF);

  //----Card Color
  static var opacityCardRed = const Color(0xff8B191C);
  static var colorCardChips = const Color(0xffF2F2F2);

  //==app responce color===================
  static var dangerColor = const Color(0xffEB5757);
  static var successColor = const Color(0xff60AD00);
  static var iconColor = const Color(0xffC2C2C2);
  //Statue color======
  static var warningColor = const Color(0xffE28112);
  static var inProgressColor = const Color(0xff0685CF);
  static var newCaseColor = const Color(0xffF54E5E);
}

class MyMaterialColor {
  static const MaterialColor mcgpalette0 =
      MaterialColor(_mcgpalette0PrimaryValue, <int, Color>{
    50: Color(0xFFE2EAF0),
    100: Color(0xFFB6CAD9),
    200: Color(0xFF85A7C0),
    300: Color(0xFF5483A6),
    400: Color(0xFF306993),
    500: Color(_mcgpalette0PrimaryValue),
    600: Color(0xFF0A4778),
    700: Color(0xFF083D6D),
    800: Color(0xFF063563),
    900: Color(0xFF032550),
  });
  static const int _mcgpalette0PrimaryValue = 0xFF0B4E80;

  static const MaterialColor mcgpalette0Accent =
      MaterialColor(_mcgpalette0AccentValue, <int, Color>{
    100: Color(0xFF83AFFF),
    200: Color(_mcgpalette0AccentValue),
    400: Color(0xFF1D6EFF),
    700: Color(0xFF035EFF),
  });
  static const int _mcgpalette0AccentValue = 0xFF508FFF;
}

class MyWhiteMaterial {
  static const MaterialColor mcgpalette0 =
      MaterialColor(_mcgpalette0PrimaryValue, <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(_mcgpalette0PrimaryValue),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  });
  static const int _mcgpalette0PrimaryValue = 0xFFFFFFFF;

  static const MaterialColor mcgpalette0Accent =
      MaterialColor(_mcgpalette0AccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_mcgpalette0AccentValue),
    400: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
  });
  static const int _mcgpalette0AccentValue = 0xFFFFFFFF;
}
