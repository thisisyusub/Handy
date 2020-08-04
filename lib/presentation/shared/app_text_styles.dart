import 'package:flutter/widgets.dart';
import 'package:responsive_x/responsive_x.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static final fontSize32MediumStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 5,
    color: AppColors.handyTextColor,
    fontWeight: FontWeight.w600,
  );

  static final fontSize14MediumStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.1875,
    color: AppColors.handyTextColor,
    fontWeight: FontWeight.w600,
  );

  static final fontSize11Style = TextStyle(
    fontSize: SizeConfig.textMultiplier * 1.71875,
    color: AppColors.handyTextColor,
  );
}
