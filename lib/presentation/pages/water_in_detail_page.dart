import 'package:flutter/material.dart';

import '../../utils/constants/app_strings.dart';
import '../shared/app_colors.dart';
import '../shared/app_text_styles.dart';
import '../widgets/chip_item.dart';
import '../widgets/custom_progress_bar.dart';
import '../widgets/date_controller.dart';
import '../../utils/size_config.dart';

// TODO: Create custom selector widget
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
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 4.6875,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.widthMultiplier * 8.333,
                      ),
                      child: Text(
                        AppStrings.setTarget,
                        style: AppTextStyles.fontSize14MediumStyle,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 9.375,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _waterTypeBoxWidget(
                          'glasss',
                          '200 ml',
                          true,
                        ),
                        SizedBox(
                          width: SizeConfig.widthMultiplier * 6.944,
                        ),
                        _waterTypeBoxWidget('bottle', '500 ml'),
                      ],
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

  Widget _waterTypeBoxWidget(String type, String amount,
      [bool isSelected = false]) {
    return Container(
      height: SizeConfig.heightMultiplier * 12.5,
      width: SizeConfig.widthMultiplier * 22.222,
      decoration: BoxDecoration(
        color: isSelected ? AppColors.waterTypeBackgroundColor : null,
        borderRadius: BorderRadius.circular(
          SizeConfig.widthMultiplier * 4.166,
        ),
        border: Border.all(
          width: 1,
          color: AppColors.waterTypeBorderColor,
        ),
      ),
      child: Center(
        child: RichText(
          text: TextSpan(
              text: '$type\n',
              style: AppTextStyles.fontSize14MediumStyle,
              children: [
                TextSpan(
                  text: amount,
                  style: AppTextStyles.fontSize10RegularStyle,
                ),
              ]),
        ),
      ),
    );
  }
}
