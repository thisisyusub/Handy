import 'package:flutter/material.dart';
import './app_colors.dart';
import './app_text_styles.dart';

final kLightTheme = ThemeData(
  primaryColor: AppColors.kPrimaryColor,
  scaffoldBackgroundColor: AppColors.kScafooldBackgroundColor,
  textTheme: TextTheme(
    headline4: AppTextStyles.kFontSize32MediumStyle,
    button: AppTextStyles.kFontSize14MediumStyle,
    caption: AppTextStyles.kFontSize11Style,
  ),
);
