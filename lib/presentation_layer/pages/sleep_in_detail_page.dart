import 'package:flutter/material.dart';
import 'package:handy/constants/app_strings.dart';
import 'package:handy/presentation_layer/shared/app_colors.dart';
import 'package:handy/presentation_layer/shared/app_text_styles.dart';
import 'package:handy/presentation_layer/widgets/chip_item.dart';
import 'package:handy/presentation_layer/widgets/custom_progress_bar.dart';
import 'package:handy/presentation_layer/widgets/date_controller.dart';
import 'package:handy/utils/size_config.dart';

class SleepInDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  Text(
                    AppStrings.setReminder,
                    style: AppTextStyles.fontSize14MediumStyle,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 7.8125,
              ),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          AppStrings.calorie,
                          style: AppTextStyles.fontSize16MediumStyle,
                        ),
                        CustomProgressBar(0.64),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 5.46875,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '7/8 hours',
                          style: AppTextStyles.fontSize16MediumStyle,
                        ),
                        ChipItem(
                          label: AppStrings.edit,
                          height: SizeConfig.heightMultiplier * 3.75,
                          width: SizeConfig.widthMultiplier * 14.444,
                          borderRadius: SizeConfig.widthMultiplier * 3.33,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 4.375,
                    ),
                    DateController(),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 4.6875,
                    ),
                    Divider(
                      color: AppColors.dividerColor,
                      thickness: 1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.heightMultiplier * 4.6875,
                        left: SizeConfig.widthMultiplier * 8.333,
                      ),
                      child: Text(
                        AppStrings.setTarget,
                        style: AppTextStyles.fontSize14MediumStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
