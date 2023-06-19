// ignore_for_file: deprecated_member_use

import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:flutter/material.dart';

import '../../gen/fonts.gen.dart';

class ThemeBase {
  static ThemeData darkTheme() {
    return ThemeData(
        primaryColor: AppColor.primaryColorDark,
        unselectedWidgetColor: AppColor.iconColor,
        iconTheme: ThemeData.dark().iconTheme.copyWith(
              color: AppColor.thirdColor,
            ),
        colorScheme: ColorScheme.dark(
            primary: AppColor.thirdColor, brightness: Brightness.dark),
        backgroundColor: AppColor.primaryColorDark,
        canvasColor: AppColor.backColorDark,
        cardColor: AppColor.cardColorDark,
        dividerColor: AppColor.secondaryColor,
        cardTheme: CardTheme(
            color: AppColor.cardColorDark,
            shadowColor: Colors.grey[200],
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14))),
        brightness: Brightness.dark,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppColor.thirdColor,
        ),
        primaryIconTheme: IconThemeData(color: AppColor.thirdColor),
        // actionIconTheme: ActionIconThemeData(backButtonIconBuilder:(context) => ,),
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.all(AppColor.thirdColor),
          trackColor: MaterialStateProperty.resolveWith((states) =>
              states.contains(MaterialState.selected)
                  ? AppColor.thirdColor
                  : null),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: AppColor.cardColorDark,
        ),
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Color(0xff1F1B24),
        ),
        appBarTheme: AppBarTheme(backgroundColor: AppColor.primaryColorDark),
        textTheme: TextThemeBase.poppinsTextTheme(ThemeData.dark().textTheme));
  }

  static ThemeData theme() {
    return ThemeData(
        primaryColor: AppColor.primaryColor,
        backgroundColor: AppColor.backColor,
        brightness: Brightness.light,
        iconTheme: ThemeData.light().iconTheme.copyWith(
              color: Colors.black,
            ),
        colorScheme: ColorScheme.light(
          primary: AppColor.primaryColor,
          brightness: Brightness.light,
        ),
        dividerColor: AppColor.textGrey,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppColor.primaryColor,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColor.primaryColor,
        ),
        cardTheme: CardTheme(
          color: AppColor.secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        textTheme: TextThemeBase.poppinsTextTheme());
  }
}

class TextThemeBase {
  static TextTheme poppinsTextTheme([TextTheme? textTheme]) {
    textTheme ??= ThemeData.light().textTheme;

    return TextTheme(
      displayLarge: textTheme.displayLarge?.copyWith(
        fontFamily: FontFamily.poppinsBold,
        height: 1.8,
      ),
      displayMedium: textTheme.displayMedium?.copyWith(
        fontFamily: FontFamily.poppinsSemiBold,
        height: 1.5,
      ),
      displaySmall: textTheme.displaySmall?.copyWith(
        fontFamily: FontFamily.poppinsRegular,
        height: 1.2,
      ),
      headlineLarge: textTheme.headlineLarge?.copyWith(
        fontFamily: FontFamily.poppinsSemiBold,
        height: 1.5,
        fontSize: 32,
        fontWeight: FontWeight.w700,
        letterSpacing: .5,
      ),
      headlineMedium: textTheme.headlineMedium?.copyWith(
        fontFamily: FontFamily.poppinsMedium,
        height: 1.2,
        fontSize: 24,
        letterSpacing: .5,
      ),
      headlineSmall: textTheme.headlineSmall?.copyWith(
        fontFamily: FontFamily.poppinsRegular,
        height: 1.1,
        fontSize: 20,
        letterSpacing: .5,
      ),
      titleLarge: textTheme.titleLarge?.copyWith(
        fontFamily: FontFamily.poppinsBold,
        height: 1.5,
        letterSpacing: .5,
        fontSize: 16,
      ),
      titleMedium: textTheme.titleMedium?.copyWith(
        fontFamily: FontFamily.poppinsSemiBold,
        height: 1.5,
        letterSpacing: .5,
        fontSize: 14,
      ),
      titleSmall: textTheme.titleSmall?.copyWith(
        fontFamily: FontFamily.poppinsMedium,
        height: 1.5,
        letterSpacing: .5,
        fontSize: 12,
      ),
      bodyLarge: textTheme.bodyLarge?.copyWith(
        fontFamily: FontFamily.poppinsSemiBold,
        height: 1.5,
        fontSize: 16,
        letterSpacing: .5,
      ),
      bodyMedium: textTheme.bodyMedium?.copyWith(
        fontFamily: FontFamily.poppinsMedium,
        height: 1.2,
        fontSize: 14,
        letterSpacing: .5,
      ),
      bodySmall: textTheme.bodySmall?.copyWith(
        fontFamily: FontFamily.poppinsRegular,
        fontSize: 12,
        height: 1.1,
        letterSpacing: .5,
      ),
      labelLarge: textTheme.labelLarge?.copyWith(
        fontFamily: FontFamily.poppinsMedium,
        height: 1.5,
        fontSize: 14,
      ),
      labelMedium: textTheme.labelMedium?.copyWith(
        fontFamily: FontFamily.poppinsRegular,
        height: 1.2,
        fontSize: 12,
      ),
      labelSmall: textTheme.labelSmall?.copyWith(
        fontFamily: FontFamily.poppinsThin,
        height: 1.1,
        fontSize: 9,
      ),
    );
  }
}
