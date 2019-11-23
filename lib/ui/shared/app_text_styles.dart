import 'package:flutter/widgets.dart';
import 'package:heathier/ui/shared/app_colors.dart';
import 'package:heathier/utils/size_config.dart';

class AppTextStyles {
  AppTextStyles._();

  static final bigTextStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.5,
    fontWeight: FontWeight.w700,
  );

  static final mediumTextStyle = TextStyle(
      fontSize: SizeConfig.textMultiplier * 1.875,
      color: AppColors.buttonBorderColor);

  static final mediumBoldTextStyle = TextStyle(
      fontSize: SizeConfig.textMultiplier * 1.875,
      color: AppColors.buttonBorderColor,
      fontWeight: FontWeight.w700);

  static final smallTextStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 1.5625,
    color: AppColors.buttonBorderColor,
  );

  static final smallBoldTextStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 1.5625,
    color: AppColors.buttonBorderColor,
    fontWeight: FontWeight.w700,
  );

  static final verySmallTextStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 1.25,
    color: AppColors.hourIntervalTextColor,
    fontWeight: FontWeight.w900,
  );
}
