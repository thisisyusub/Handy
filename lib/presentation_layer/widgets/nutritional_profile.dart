import 'package:flutter/material.dart';
import 'package:handy/contants/app_strings.dart';
import 'package:handy/presentation_layer/shared/app_colors.dart';
import 'package:handy/presentation_layer/shared/app_text_styles.dart';
import 'package:handy/utils/size_config.dart';

class NutritionalProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          AppStrings.nutritionalProfile,
          style: AppTextStyles.fontSize16MediumStyle,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1.875,
        ),
        Text(
          AppStrings.dailyValueIsBasesOnYourDailyNutritionalGoals,
          style: AppTextStyles.fontSize12RegularV2Style,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 4.6875,
        ),
        _buildIntakeWidget(),
        SizedBox(
          height: SizeConfig.heightMultiplier * 4.21875,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            AppStrings.dailyValue,
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 3.125,
        ),
      ],
    );
  }

  _buildIntakeWidget() {
    List items = [
      [
        AppStrings.lowIntake,
        AppColors.lowIntakeCircleColor,
      ],
      [
        AppStrings.averageIntake,
        AppColors.averageIntakeCircleColor,
      ],
      [
        AppStrings.highIntake,
        AppColors.highIntakeCircleColor,
      ],
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: items
          .map(
            (item) => Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  maxRadius: SizeConfig.widthMultiplier * 1.5,
                  backgroundColor: item[1],
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  item[0],
                  style: AppTextStyles.fontSize12RegularStyle,
                  overflow: TextOverflow.clip,
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
