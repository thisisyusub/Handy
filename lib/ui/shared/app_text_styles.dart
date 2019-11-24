import 'package:flutter/widgets.dart';
import 'package:heathier/ui/shared/app_colors.dart';
import 'package:heathier/utils/size_config.dart';

class AppTextStyles {
  AppTextStyles._();

  // new part
  static final fontSize40Style = TextStyle(
    fontSize: SizeConfig.textMultiplier * 6.25,
    fontWeight: FontWeight.bold,
    color: AppColors.welcomeMessageTextColor,
    height: 1.5,
  );

  static final fontSize20Style = TextStyle(
    fontSize: SizeConfig.textMultiplier * 3.125,
    fontWeight: FontWeight.w700,
    color: AppColors.signUpButtonTextColor,
  );

  static final fontSize16Style = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.5,
  );

  static final fontSize16BoldStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.5,
    fontWeight: FontWeight.w700,
  );

  static final fontSize16WithColorStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.5,
    color: AppColors.pageViewControllerTextColor,
    fontWeight: FontWeight.w700,
  );

  static final fontSize24BoldStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 3.75,
    color: AppColors.pageViewTitleColor,
    fontWeight: FontWeight.bold,
  );

  static final fontSize10Style = TextStyle(
    fontSize: SizeConfig.textMultiplier * 1.5625,
    color: AppColors.pageViewSubtitleColor,
  );

  static final fontSize12Style = TextStyle(
    fontSize: SizeConfig.textMultiplier * 1.875,
    color: AppColors.multiSelectionButtonTextColor,
  );
  // new part

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
