import 'package:flutter/material.dart';
import 'package:heathier/contants/app_strings.dart';
import 'package:heathier/presentation_layer/shared/app_colors.dart';
import 'package:heathier/presentation_layer/shared/app_icons.dart';
import 'package:heathier/presentation_layer/shared/app_text_styles.dart';
import 'package:heathier/presentation_layer/widgets/add_button.dart';
import 'package:heathier/presentation_layer/widgets/custom_drawer.dart';
import 'package:heathier/presentation_layer/widgets/home_list_item.dart';
import 'package:heathier/presentation_layer/widgets/water_action_button.dart';
import 'package:heathier/utils/size_config.dart';

class HomePage extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation, context);
            return Scaffold(
              key: scaffoldKey,
              appBar: AppBar(
                backgroundColor: AppColors.appBackgroundColor,
                elevation: 0,
                automaticallyImplyLeading: true,
                leading: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.blockWidth * 8.888,
                  ),
                  child: GestureDetector(
                    child: Icon(
                      Icons.menu,
                    ),
                    onTap: () {
                      scaffoldKey.currentState.openDrawer();
                    },
                  ),
                ),
              ),
              drawer: CustomDrawer(),
              backgroundColor: AppColors.appBackgroundColor,
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            top: SizeConfig.blockHeight * 4,
                            left: SizeConfig.blockWidth * 8.888,
                            right: SizeConfig.blockWidth * 8.888,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Good morning Jeremy',
                                style: AppTextStyles.fontSize16MMediumStyle,
                              ),
                              SizedBox(
                                height: SizeConfig.blockHeight * 3.4375,
                              ),
                              Text(
                                'you should take \'Orphenadrine\' at 9PM',
                                style: AppTextStyles.fontSize16MMediumStyle,
                              ),
                              SizedBox(
                                height: SizeConfig.blockHeight * 3.4375,
                              ),
                              Text(
                                'These are for you',
                                style: AppTextStyles.fontSize12RegularStyle,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockHeight * 1.5625,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.blockWidth * 8.888,
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                    AppIcons.forYouPng,
                                  ),
                                  width: SizeConfig.blockWidth * 37.5,
                                  height: SizeConfig.blockHeight * 14.0625,
                                ),
                                SizedBox(
                                  width: SizeConfig.blockWidth * 5.555,
                                ),
                                Container(
                                  child: Image.asset(
                                    AppIcons.forYouPng,
                                  ),
                                  width: SizeConfig.blockWidth * 37.5,
                                  height: SizeConfig.blockHeight * 14.0625,
                                ),
                                SizedBox(
                                  width: SizeConfig.blockWidth * 5.555,
                                ),
                                Container(
                                  child: Image.asset(
                                    AppIcons.forYouPng,
                                  ),
                                  width: SizeConfig.blockWidth * 37.5,
                                  height: SizeConfig.blockHeight * 14.0625,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.blockHeight * 4.6875,
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
