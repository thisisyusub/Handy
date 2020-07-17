import 'package:flutter/widgets.dart';
import '../../utils/size_config.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  // new part last
  static final fontSize30MediumStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 4.6875,
    color: AppColors.handyTextColor,
    fontWeight: FontWeight.w600,
  );

  static final fontSize22MediumStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.5,
    color: AppColors.handyTextColor,
    fontWeight: FontWeight.w600,
  );

  static final fontSize16MediumStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.1875,
    color: AppColors.customButtonTextColor,
    fontWeight: FontWeight.w600,
  );

  static final fontSize14RegularStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.1875,
    color: AppColors.customButtonTextColor,
  );

  static final fontSize14V2RegularStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.1875,
    color: AppColors.nutritionalItemTitleColor,
  );

  static final fontSize14V3RegularStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.1875,
    color: AppColors.nutritionalItemAmountColor,
  );

  static final fontSize14MediumStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.1875,
    color: AppColors.customButtonTextColor,
    fontWeight: FontWeight.w600,
  );

  static final fontSize12RegularStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 1.875,
    color: AppColors.customButtonTextColor,
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

  static final fontSize11Style = TextStyle(
    fontSize: SizeConfig.textMultiplier * 1.71875,
    color: AppColors.customButtonTextColor,
  );

  static final fontSize11BoldStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 1.71875,
    color: AppColors.customButtonTextColor,
    fontWeight: FontWeight.bold,
  );

  static final fontSize10RegularStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 1.5625,
    color: AppColors.homeListItemTitleTextColor,
    fontWeight: FontWeight.bold,
  );
}
