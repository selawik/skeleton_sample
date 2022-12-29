import 'package:flutter/material.dart';

import 'app_colors.dart';

class ThemeBuilder {
  static ThemeData get theme => ThemeData(
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.purple,
        ),
        scaffoldBackgroundColor: AppColors.white,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.black,
        ),
        appBarTheme: const AppBarTheme(
          color: AppColors.white,
          elevation: 0,
          centerTitle: false,
          titleSpacing: 20,
          titleTextStyle: TextStyle(
            fontSize: 24,
            color: AppColors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        textTheme: const TextTheme(
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
        ),
      );

  static double get defaultBorderRadius => 20;
}
