import 'package:flutter/material.dart';
import 'package:heathier/contants/app_strings.dart';
import 'package:heathier/presentation_layer/shared/app_colors.dart';
import 'package:heathier/presentation_layer/shared/app_icons.dart';
import 'package:heathier/presentation_layer/shared/app_text_styles.dart';
import 'package:heathier/presentation_layer/widgets/chip_item.dart';
import 'package:heathier/presentation_layer/widgets/custom_drawer.dart';
import 'package:heathier/presentation_layer/widgets/custom_progress_bar.dart';
import 'package:heathier/presentation_layer/widgets/home_list_item.dart';
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
            return SafeArea(
              child: Scaffold(
                key: scaffoldKey,
                appBar: AppBar(
                  backgroundColor: AppColors.appBackgroundColor,
                  elevation: 0,
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
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.min,
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
                                SizedBox(
                                  width: SizeConfig.blockWidth * 5.555,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockHeight * 5.15625,
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView(
                        children: <Widget>[
                          HomeListItem(
                            iconPath: AppIcons.calorie,
                            title: AppStrings.calorie,
                            rightTopWidget: CustomProgressBar(0.5),
                            leftBottomWidget: Text('782/1800 Cal'),
                            rightBottomWidget: ChipItem(
                              label: AppStrings.add,
                              height: SizeConfig.blockHeight * 3.75,
                              width: SizeConfig.blockWidth * 14.444,
                              borderRadius: SizeConfig.blockWidth * 3.33,
                            ),
                          ),
                          HomeListItem(
                            iconPath: AppIcons.waterDrop,
                            title: AppStrings.water,
                            rightTopWidget: CustomProgressBar(0.4),
                            leftBottomWidget: Text('7/12 glasses'),
                            rightBottomWidget: Row(
                              children: <Widget>[
                                ChipItem(
                                  label: '-',
                                  height: SizeConfig.blockHeight * 4.6875,
                                  width: SizeConfig.blockWidth * 8.333,
                                  borderRadius: SizeConfig.blockWidth * 4.166,
                                  isResizable: false,
                                ),
                                SizedBox(
                                  width: SizeConfig.blockWidth * 2.777,
                                ),
                                ChipItem(
                                  label: '+',
                                  height: SizeConfig.blockHeight * 4.6875,
                                  width: SizeConfig.blockWidth * 8.333,
                                  borderRadius: SizeConfig.blockWidth * 4.166,
                                  isResizable: false,
                                ),
                              ],
                            ),
                          ),
                          HomeListItem(
                            iconPath: AppIcons.moon,
                            title: AppStrings.sleep,
                            rightTopWidget: CustomProgressBar(0.76),
                            leftBottomWidget: Text('7/8 hours'),
                            rightBottomWidget: ChipItem(
                              label: AppStrings.edit,
                              height: SizeConfig.blockHeight * 3.75,
                              width: SizeConfig.blockWidth * 14.444,
                              borderRadius: SizeConfig.blockWidth * 3.33,
                            ),
                          ),
                          HomeListItem(
                            iconPath: AppIcons.weight,
                            title: AppStrings.weight,
                            rightTopWidget: ChipItem(
                              label: AppStrings.manage,
                              width: SizeConfig.blockWidth * 19.722,
                              height: SizeConfig.blockHeight * 3.75,
                              borderRadius: SizeConfig.blockWidth * 3.333,
                            ),
                            leftBottomWidget: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('76.8 kg'),
                                Text('BMI 22.4'),
                              ],
                            ),
                            rightBottomWidget: CustomProgressBar(0.89),
                          ),
                          HomeListItem(
                            iconPath: AppIcons.medicine,
                            title: AppStrings.medicine,
                            rightTopWidget: ChipItem(
                              label: AppStrings.manage,
                              width: SizeConfig.blockWidth * 19.722,
                              height: SizeConfig.blockHeight * 3.75,
                              borderRadius: SizeConfig.blockWidth * 3.333,
                            ),
                            leftBottomWidget: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  'Vitamin C 1/1',
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: SizeConfig.blockHeight * 3.125,
                                ),
                                Text('Orphenandrine 1/3'),
                              ],
                            ),
                            rightBottomWidget: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    ChipItem(
                                      label: '-',
                                      height: SizeConfig.blockHeight * 4.6875,
                                      width: SizeConfig.blockWidth * 8.333,
                                      borderRadius:
                                          SizeConfig.blockWidth * 4.166,
                                      isResizable: false,
                                    ),
                                    SizedBox(
                                      width: SizeConfig.blockWidth * 2.777,
                                    ),
                                    ChipItem(
                                      label: '+',
                                      height: SizeConfig.blockHeight * 4.6875,
                                      width: SizeConfig.blockWidth * 8.333,
                                      borderRadius:
                                          SizeConfig.blockWidth * 4.166,
                                      isResizable: false,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: SizeConfig.blockHeight * 3.125,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    ChipItem(
                                      label: '-',
                                      height: SizeConfig.blockHeight * 4.6875,
                                      width: SizeConfig.blockWidth * 8.333,
                                      borderRadius:
                                          SizeConfig.blockWidth * 4.166,
                                      isResizable: false,
                                    ),
                                    SizedBox(
                                      width: SizeConfig.blockWidth * 2.777,
                                    ),
                                    ChipItem(
                                      label: '+',
                                      height: SizeConfig.blockHeight * 4.6875,
                                      width: SizeConfig.blockWidth * 8.333,
                                      borderRadius:
                                          SizeConfig.blockWidth * 4.166,
                                      isResizable: false,
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
