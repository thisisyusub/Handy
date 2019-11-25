import 'package:flutter/material.dart';
import 'package:heathier/core/constants/app_strings.dart';
import 'package:heathier/ui/shared/app_text_styles.dart';
import 'package:heathier/ui/widgets/chip_item.dart';
import 'package:heathier/ui/widgets/multi_selection_button.dart';
import 'package:heathier/utils/size_config.dart';

class Activity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                AppStrings.height,
                style: AppTextStyles.fontSize20WithColorStyle,
              ),
              ChipItem(
                label: '163',
                height: SizeConfig.blockHeight * 3.7,
                width: SizeConfig.blockWidth * 11.944,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                AppStrings.cm,
                style: AppTextStyles.fontSize12Style,
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.blockHeight * 4.6875,
          ),
          Row(
            children: <Widget>[
              Text(
                AppStrings.weight,
                style: AppTextStyles.fontSize20WithColorStyle,
              ),
              ChipItem(
                label: '75',
                height: SizeConfig.blockHeight * 3.7,
                width: SizeConfig.blockWidth * 11.944,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                AppStrings.kg,
                style: AppTextStyles.fontSize12Style,
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.blockHeight * 6.25,
          ),
          Row(
            children: <Widget>[
              Text(
                AppStrings.activityLevel,
                style: AppTextStyles.fontSize20WithColorStyle,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.info_outline),
            ],
          ),
          SizedBox(
            height: SizeConfig.blockHeight * 4.6875,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              MultiSelectionButton(
                'Sedentary',
                false,
                null,
              ),
              MultiSelectionButton(
                'Lightly active',
                false,
                null,
              ),
              MultiSelectionButton(
                'Moderately active',
                false,
                null,
              ),
              MultiSelectionButton(
                'Very active',
                false,
                null,
              ),
              MultiSelectionButton(
                'Extra active',
                false,
                null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
