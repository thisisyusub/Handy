import 'package:flutter/material.dart';

import 'app_colors.dart';

/// contains app text styles
class AppTextStyles {
  AppTextStyles._();

  /// fontize: 32
  /// FontWeight: 600
  static final fontSize32MediumStyle = TextStyle(
    fontSize: 32,
    color: AppColors.handyTextColor,
    fontWeight: FontWeight.w600,
  );

  /// fontize: 14
  /// FontWeight: 600
  static final fontSize14MediumStyle = TextStyle(
    fontSize: 14,
    color: AppColors.handyTextColor,
    fontWeight: FontWeight.w600,
  );

  /// fontize: 11
  /// FontWeight: normal
  static final fontSize11Style = TextStyle(
    fontSize: 11,
    color: AppColors.handyTextColor,
  );
}
