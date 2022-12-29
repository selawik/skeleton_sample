import 'package:flutter/material.dart';

import 'app_colors.dart';

class ThemeBuilder {
  static ThemeData get theme => ThemeData(
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.purple,
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
