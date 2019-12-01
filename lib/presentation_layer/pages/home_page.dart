import 'package:flutter/material.dart';
import 'package:heathier/contants/app_strings.dart';
import 'package:heathier/presentation_layer/shared/app_colors.dart';
import 'package:heathier/presentation_layer/shared/app_icons.dart';
import 'package:heathier/presentation_layer/widgets/add_button.dart';
import 'package:heathier/presentation_layer/widgets/home_list_item.dart';
import 'package:heathier/presentation_layer/widgets/water_action_button.dart';
import 'package:heathier/utils/size_config.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation, context);
            return Scaffold(
              backgroundColor: AppColors.appBackgroundColor,
              body: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: SizeConfig.blockHeight * 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.blockWidth * 8.8888,
                        right: SizeConfig.blockWidth * 8.8888,
                      ),
                      child: Column(
                        children: <Widget>[
                          HomeListItem(
                            iconPath: AppIcons.calorie,
                            title: AppStrings.calorie,
                            progressBarColor: AppColors.calorieProgressBarColor,
                            action: AddButton(),
                            indicator: '400/1600',
                            indicatorTitle: AppStrings.kCal,
                          ),
                          HomeListItem(
                            iconPath: AppIcons.waterDrop,
                            title: AppStrings.water,
                            progressBarColor: AppColors.waterProgressBarColor,
                            action: Row(
                              children: <Widget>[
                                WaterActionButton('-', null),
                                SizedBox(
                                  width: SizeConfig.blockWidth * 2.777,
                                ),
                                WaterActionButton('+', null),
                              ],
                            ),
                            indicator: '6/12',
                            indicatorTitle: AppStrings.glasses,
                          ),
                          HomeListItem(
                            iconPath: AppIcons.moon,
                            title: AppStrings.sleep,
                            progressBarColor: AppColors.sleepProgressBarColor,
                            action: AddButton(),
                            indicator: '7/8',
                            indicatorTitle: AppStrings.hours,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
