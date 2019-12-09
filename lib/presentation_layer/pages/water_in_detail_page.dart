import 'package:flutter/material.dart';
import 'package:handy/contants/app_strings.dart';
import 'package:handy/presentation_layer/shared/app_colors.dart';
import 'package:handy/presentation_layer/shared/app_text_styles.dart';
import 'package:handy/presentation_layer/widgets/chip_item.dart';
import 'package:handy/presentation_layer/widgets/custom_progress_bar.dart';
import 'package:handy/presentation_layer/widgets/date_controller.dart';
import 'package:handy/utils/size_config.dart';

class WaterInDetailPage extends StatelessWidget {
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
                height: SizeConfig.heightMultiplier * 3.5,
              ),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          AppStrings.water,
                          style: AppTextStyles.fontSize16MediumStyle,
                        ),
                        CustomProgressBar(0.64),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 5.15626,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('7/12 glasses'),
                        Row(
                          children: <Widget>[
                            ChipItem(
                              height: SizeConfig.heightMultiplier * 4.6875,
                              width: SizeConfig.widthMultiplier * 8.333,
                              borderRadius: SizeConfig.widthMultiplier * 4.166,
                              isResizable: false,
                              isIconButton: true,
                              buttonIcon: Icons.remove,
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 2.777,
                            ),
                            ChipItem(
                              height: SizeConfig.heightMultiplier * 4.6875,
                              width: SizeConfig.widthMultiplier * 8.333,
                              borderRadius: SizeConfig.widthMultiplier * 4.166,
                              isResizable: false,
                              isIconButton: true,
                              buttonIcon: Icons.add,
                            ),
                          ],
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
