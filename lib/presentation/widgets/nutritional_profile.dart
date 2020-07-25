import 'package:flutter/material.dart';

import '../../utils/constants/app_strings.dart';
import '../shared/app_colors.dart';
import '../shared/app_text_styles.dart';
import '../../utils/responsive_helper/size_config.dart';

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
          alignment: Alignment.topRight,
          child: Text(
            AppStrings.dailyValue,
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1.5625,
        ),
        _buildNutritionalItem(
          AppColors.averageIntakeCircleColor,
          'Total Fat',
          '39.9 g',
          '66%',
        ),
        _buildNutritionalItem(
          AppColors.lowIntakeCircleColor,
          'Saturated Fat',
          '12 g',
          '40%',
          2,
        ),
        _buildNutritionalItem(
          AppColors.averageIntakeCircleColor,
          'Trans Fat',
          '0 g',
          '',
          2,
        ),
        _buildNutritionalItem(
          AppColors.lowIntakeCircleColor,
          'Cholesterol',
          '0 mg',
          '0%',
        ),
        _buildNutritionalItem(
          AppColors.averageIntakeCircleColor,
          'Sodium',
          '0 mg',
          '0%',
        ),
        _buildNutritionalItem(
          AppColors.lowIntakeCircleColor,
          'Total Carbohydrate',
          '58.6g',
          '32%',
        ),
        _buildNutritionalItem(
          AppColors.lowIntakeCircleColor,
          'Dietary Fiber',
          '12g',
          '40%',
          2,
        ),
        _buildNutritionalItem(
          AppColors.lowIntakeCircleColor,
          'Total Sugar',
          '8g',
          '40%',
          2,
        ),
        _buildNutritionalItem(
          AppColors.lowIntakeCircleColor,
          'includes 3g added sugars',
          '',
          '',
          2,
        ),
        _buildNutritionalItem(
          AppColors.lowIntakeCircleColor,
          'Protein',
          '46.9g',
          '34%',
        ),
        _buildNutritionalItem(
          AppColors.lowIntakeCircleColor,
          'Vitamin D',
          '0mcg',
          '0%',
        ),
        _buildNutritionalItem(
          AppColors.lowIntakeCircleColor,
          'Calcium',
          '120mg',
          '10%',
        ),
        _buildNutritionalItem(
          AppColors.lowIntakeCircleColor,
          'Iron',
          '0.9mg',
          '1%',
        ),
        _buildNutritionalItem(
          AppColors.lowIntakeCircleColor,
          'Potassium',
          '120mg',
          '4%',
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
      ],
    );
  }

  _buildNutritionalItem(
      Color itemColor, String title, String amount, String percent,
      [int type = 1]) {
    return Container(
      margin: EdgeInsets.only(
        bottom: SizeConfig.heightMultiplier * 2.5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                maxRadius: SizeConfig.widthMultiplier * 1.5,
                backgroundColor: itemColor,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.widthMultiplier *
                      ((type == 1) ? 3.333 : 5.833),
                ),
                child: Text(
                  title,
                  style: AppTextStyles.fontSize14V2RegularStyle,
                ),
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 3.888,
              ),
              Text(
                amount,
                style: AppTextStyles.fontSize14V3RegularStyle,
              ),
            ],
          ),
          Text(percent),
        ],
      ),
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
