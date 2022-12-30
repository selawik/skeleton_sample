import 'package:flutter/material.dart';

import 'app_colors.dart';

class ThemeBuilder {
  static ThemeData get theme => ThemeData(
        progressIndicatorTheme: progressIndicatorTheme,
        scaffoldBackgroundColor: AppColors.white,
        bottomNavigationBarTheme: bottomNavBarTheme,
        appBarTheme: appBarTheme,
        textTheme: textTheme,
      );

  static double get defaultBorderRadius => 20;

  static double get smallBorderRadius => 10;

  static TextTheme get textTheme => const TextTheme(
        headline1: TextStyle(
          fontSize: 24,
          color: AppColors.black,
          fontWeight: FontWeight.w500,
        ),
        bodyText1: TextStyle(
          fontSize: 18,
          color: AppColors.black,
          fontWeight: FontWeight.w500,
        ),
        subtitle1: TextStyle(
          fontSize: 14,
          color: AppColors.black,
          fontWeight: FontWeight.w500,
        ),
      );

  static AppBarTheme get appBarTheme => const AppBarTheme(
        color: AppColors.white,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 20,
        titleTextStyle: TextStyle(
          fontSize: 24,
          color: AppColors.black,
          fontWeight: FontWeight.w500,
        ),
      );

  static BottomNavigationBarThemeData get bottomNavBarTheme =>
      const BottomNavigationBarThemeData(
        backgroundColor: AppColors.black,
      );

  static ProgressIndicatorThemeData get progressIndicatorTheme =>
      const ProgressIndicatorThemeData(
        color: AppColors.darkPurple,
      );
}
