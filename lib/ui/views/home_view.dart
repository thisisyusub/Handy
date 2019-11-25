import 'package:flutter/material.dart';
import 'package:heathier/core/constants/app_strings.dart';
import 'package:heathier/ui/shared/app_colors.dart';
import 'package:heathier/ui/shared/app_icons.dart';
import 'package:heathier/ui/widgets/add_button.dart';
import 'package:heathier/ui/widgets/custom_bottom_navigation_bar.dart';
import 'package:heathier/ui/widgets/home_list_view.dart';
import 'package:heathier/ui/widgets/home_top_bar.dart';
import 'package:heathier/ui/widgets/water_action_button.dart';
import 'package:heathier/utils/size_config.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation, context);
            return Scaffold(
              backgroundColor: AppColors.goalItemBackgroundColor,
              body: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    HomeTopBar(),
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
              bottomNavigationBar: CustomBottomNavigationBar(),
            );
          },
        );
      },
    );
  }
}
