import 'package:flutter/material.dart';
import './app_colors.dart';
import './app_text_styles.dart';

/// [light theme configrationn] of app
/// contains [colors], [text styles] of app
final lightTheme = ThemeData(
  primaryColor: AppColors.primaryColor,
  scaffoldBackgroundColor: AppColors.appBackgroundColor,
  textTheme: TextTheme(
    headline4: AppTextStyles.fontSize32MediumStyle,
    button: AppTextStyles.fontSize14MediumStyle,
    caption: AppTextStyles.fontSize11Style,
  ),
);
