import 'package:flutter/material.dart';

import 'app_colors.dart';

/// contains app text styles
class AppTextStyles {
  AppTextStyles._();

  /// Fontsize: 32
  /// FontWeight: 600
  static final fontSize32MediumStyle = TextStyle(
    fontSize: 32,
    color: AppColors.handyTextColor,
    fontWeight: FontWeight.w600,
  );

  /// Fontsize: 16
  /// FontWeight: 600
  static final fontSize16MediumStyle = TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );

  /// Fontsize: 14
  /// FontWeight: 600
  static final fontSize14MediumStyle = TextStyle(
    fontSize: 14,
    color: AppColors.handyTextColor,
    fontWeight: FontWeight.w600,
  );

  /// Fontsize: 11
  /// FontWeight: normal
  static final fontSize11Style = TextStyle(
    fontSize: 11,
    color: AppColors.handyTextColor,
  );
}
