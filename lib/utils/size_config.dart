import 'package:flutter/widgets.dart';

class SizeConfig {
  static double screenWidth;

  static double screenHeight;

  static double blockWidth = 0;

  static double blockHeight = 0;

  static double textMultiplier;

  static double imageSizeMultiplier;

  static double heightMultiplier;

  static double widthMultiplier;

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

    blockWidth = screenWidth / 100;

    blockHeight = screenHeight / 100;

    textMultiplier = blockHeight;

    imageSizeMultiplier = blockWidth;

    heightMultiplier = blockHeight;

    widthMultiplier = blockWidth;

    textScaleFactor = MediaQuery.of(context).textScaleFactor;
  }
}
