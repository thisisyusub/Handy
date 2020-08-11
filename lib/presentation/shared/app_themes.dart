import 'package:flutter/material.dart';

import './app_colors.dart';
import './app_text_styles.dart';

/// [light theme configuration] of app
/// contains [Colors], [TextStyles] of app
final lightTheme = ThemeData(
  primaryColor: AppColors.primaryColor,
  primaryColorDark: AppColors.primaryColorDark,
  primaryColorLight: AppColors.primaryColorLight,
  scaffoldBackgroundColor: AppColors.appBackgroundColor,
  textTheme: TextTheme(
    headline4: AppTextStyles.fontSize32MediumStyle,
    button: AppTextStyles.fontSize14MediumStyle,
    caption: AppTextStyles.fontSize11Style,
  ),
);
