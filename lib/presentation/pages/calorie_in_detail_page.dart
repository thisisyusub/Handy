import 'package:flutter/material.dart';

import '../shared/app_colors.dart';
import '../shared/app_text_styles.dart';
import '../widgets/chip_item.dart';
import '../widgets/custom_progress_bar.dart';
import '../widgets/daily_meals.dart';
import '../widgets/date_controller.dart';
import '../widgets/nutritional_profile.dart';
import '../widgets/three_part_indicator.dart';
import '../widgets/three_part_indicator_detail.dart';
import '../../utils/constants/app_strings.dart';
import '../../utils/constants/routes.dart';
import '../../utils/responsive_helper/size_config.dart';

class CalorieInDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Container(
        margin: EdgeInsets.only(
          top: SizeConfig.heightMultiplier * 7.5,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 8.888,
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  child: Icon(
                    Icons.arrow_back,
                  ),
                  onTap: () => Navigator.of(context).pop(),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed(
                    Routes.SetCalorieTarget,
                  ),
                  child: Text(
                    AppStrings.setTarget,
                    style: AppTextStyles.kFontSize14MediumStyle,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3.5,
            ),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Hero(
                        tag: AppStrings.calorie,
                        child: Text(
                          AppStrings.calorie,
                          style: AppTextStyles.fontSize16MediumStyle,
                        ),
                      ),
                      Hero(
                        tag: '${AppStrings.calorie} progress bar',
                        child: CustomProgressBar(0.64),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 7.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '782/1800 Cal',
                        style: AppTextStyles.fontSize16MediumStyle,
                      ),
                      Hero(
                        tag: '${AppStrings.calorie} add button',
                        child: ChipItem(
                          label: AppStrings.add,
                          height: SizeConfig.heightMultiplier * 3.75,
                          width: SizeConfig.widthMultiplier * 14.444,
                          borderRadius: SizeConfig.widthMultiplier * 3.33,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 3.90625,
                  ),
                  DateController(),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 7.03125,
                  ),
                  ThreePartIndicator(),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 4.21875,
                  ),
                  ThreePartIndicatorDetail(),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 4.375,
                  ),
                  Divider(
                    color: AppColors.dividerColor,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 4.6875,
                  ),
                  DailyMeals(),
                  NutritionalProfile(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
