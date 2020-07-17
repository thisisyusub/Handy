import 'package:flutter/material.dart';

import '../../utils/constants/app_strings.dart';
import '../shared/app_colors.dart';
import '../shared/app_text_styles.dart';
import '../../utils/size_config.dart';

class DailyMeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          AppStrings.meals,
          style: AppTextStyles.fontSize16MediumStyle,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 5,
        ),
        Column(
          children: <Widget>[
            _mealItem(
              'Breakfast  220 Cal',
              'Eggs, Cream cheese, Green olives, and and and',
              '07:30',
            ),
            _mealItem(
              'Breakfast  220 Cal',
              'Eggs, Cream cheese, Green olives',
              '07:30',
            ),
            _mealItem(
              'Breakfast  220 Cal',
              'Eggs, Cream cheese, Green olives',
              '07:30',
            ),
          ],
        ),
      ],
    );
  }

  Widget _mealItem(
    String title,
    String subtitle,
    String date,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 1.666,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.close,
                color: AppColors.dividerColor,
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 4.444,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title),
                    Text(
                      subtitle,
                      style: AppTextStyles.fontSize12ColorRegularStyle,
                      overflow: TextOverflow.clip,
                    ),
                  ],
                ),
              ),
              Text(date),
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2.5,
        ),
        Divider(
          color: AppColors.dividerColor,
          thickness: 1,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2.5,
        ),
      ],
    );
  }
}
