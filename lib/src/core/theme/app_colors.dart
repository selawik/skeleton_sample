import 'package:flutter/material.dart';
import 'package:sample/src/core/utils/color_pair.dart';

class AppColors {
  static const Color black = Color(0xFF211F1F);
  static const Color white = Color(0xFFFFFEFC);
  static const Color gray = Color(0xFFEBEBEB);
  static const Color red = Color(0xFFFF002E);
  static const Color blue = Color(0xFFD9E6FB);
  static const Color darkBlue = Color(0xFF4D8EFF);
  static const Color purple = Color(0xFFF5F2FD);
  static const Color darkPurple = Color(0xFFCDC1FF);
  static const Color green = Color(0xFFE4F9E4);
  static const Color darkGreen = Color(0xFF7AE582);
  static const Color azure = Color(0xFFE3F1FD);
  static const Color darkAzure = Color(0xFF81CCF2);
  static const Color turquoise = Color(0xFFE4FBF5);
  static const Color darkTurquoise = Color(0xFF77EDD9);

  static List<ColorPair> get codeListColors => [
        ColorPair(
          primaryColor: blue,
          secondaryColor: darkBlue,
        ),
        ColorPair(
          primaryColor: purple,
          secondaryColor: darkPurple,
        ),
        ColorPair(
          primaryColor: green,
          secondaryColor: darkGreen,
        ),
        ColorPair(
          primaryColor: azure,
          secondaryColor: darkAzure,
        ),
        ColorPair(
          primaryColor: turquoise,
          secondaryColor: darkTurquoise,
        ),
      ];
}
