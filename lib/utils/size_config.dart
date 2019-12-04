import 'package:flutter/widgets.dart';

class SizeConfig {
  static double screenWidth;

  static double screenHeight;

  static double widthMultiplier = 0;

  static double heightMultiplier = 0;

  static double textMultiplier;

  static double imageSizeMultiplier;

  static bool isPortrait = true;

  static bool isMobilePortrait = false;

  static double textScaleFactor = 0;

  void init(BoxConstraints constraints, Orientation orientation, BuildContext context) {
    if (orientation == Orientation.portrait) {
      screenWidth = constraints.maxWidth;

      screenHeight = constraints.maxHeight;

      isPortrait = true;

      if (screenWidth < 450) {
        isMobilePortrait = true;
      }
    } else {
      screenWidth = constraints.maxHeight;

      screenHeight = constraints.maxWidth;

      isPortrait = false;

      isMobilePortrait = false;
    }

    widthMultiplier = screenWidth / 100;

    heightMultiplier = screenHeight / 100;

    textMultiplier = heightMultiplier;

    imageSizeMultiplier = widthMultiplier;

    textScaleFactor = MediaQuery.of(context).textScaleFactor;
  }
}
