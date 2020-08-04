import 'package:flutter/widgets.dart';
import 'package:responsive_x/responsive_x.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  // new part last
  static final kFontSize32MediumStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 5,
    color: AppColors.kHandyTextColor,
    fontWeight: FontWeight.w600,
  );

  static final kFontSize14MediumStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.1875,
    color: AppColors.kHandyTextColor,
    fontWeight: FontWeight.w600,
  );

  static final kFontSize11Style = TextStyle(
    fontSize: SizeConfig.textMultiplier * 1.71875,
    color: AppColors.kHandyTextColor,
  );

  //! ----------------------------------------------

  static final fontSize22MediumStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.5,
    color: AppColors.kHandyTextColor,
    fontWeight: FontWeight.w600,
  );

  static final fontSize16MediumStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.1875,
    color: AppColors.kHandyTextColor,
    fontWeight: FontWeight.w600,
  );

  static final fontSize14RegularStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.1875,
    color: AppColors.kHandyTextColor,
  );

  static final fontSize14V2RegularStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.1875,
    color: AppColors.nutritionalItemTitleColor,
  );

  static final fontSize14V3RegularStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.1875,
    color: AppColors.nutritionalItemAmountColor,
  );

  static final fontSize12RegularStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 1.875,
    color: AppColors.kHandyTextColor,
  );

  static final fontSize12ColorRegularStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 1.875,
    color: AppColors.pageViewSubtitleColor,
  );

  static final fontSize12RegularV2Style = TextStyle(
    fontSize: SizeConfig.textMultiplier * 1.875,
    color: AppColors.homeListItemTitleTextColor,
  );

  static final fontSize12MediumStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 1.875,
    color: AppColors.homeListItemTitleTextColor,
    fontWeight: FontWeight.w600,
  );

  static final fontSize10RegularStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 1.5625,
    color: AppColors.homeListItemTitleTextColor,
    fontWeight: FontWeight.bold,
  );
}
