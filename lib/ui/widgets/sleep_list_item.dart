import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heathier/core/constants/app_strings.dart';
import 'package:heathier/ui/shared/app_colors.dart';
import 'package:heathier/ui/shared/app_icons.dart';
import 'package:heathier/ui/shared/app_text_styles.dart';
import 'package:heathier/ui/widgets/rating_bar.dart';
import 'package:heathier/utils/size_config.dart';

class SleepListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.blockHeight * 2.34375,
        horizontal: SizeConfig.blockWidth * 5,
      ),
      margin: EdgeInsets.only(
        bottom: SizeConfig.blockHeight * 3.90625,
      ),
      width: double.infinity,
      height: SizeConfig.blockHeight * 17 * SizeConfig.textScaleFactor,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 7,
            spreadRadius: 1,
            color: AppColors.goalsListItemShadowColor,
            offset: Offset(
              0.0,
              2.0,
            ),
          ),
        ],
        color: AppColors.goalItemBackgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SvgPicture.asset(
                    AppIcons.moon,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    AppStrings.sleep,
                    style: AppTextStyles.mediumBoldTextStyle,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Scaffold.of(context).removeCurrentSnackBar();
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Profile is clicked!'),
                    ),
                  );
                },
                child: Container(
                  width: SizeConfig.blockWidth *
                      SizeConfig.textMultiplier *
                      SizeConfig.textScaleFactor *
                      4,
                  height: SizeConfig.blockHeight *
                      SizeConfig.textMultiplier *
                      SizeConfig.textScaleFactor /
                      2,
                  padding: EdgeInsets.fromLTRB(
                      SizeConfig.blockWidth * 4.444,
                      SizeConfig.blockWidth * 0.625,
                      SizeConfig.blockWidth * 4.444,
                      SizeConfig.blockWidth * 0.625),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.buttonBorderColor),
                    borderRadius:
                        BorderRadius.circular(SizeConfig.blockWidth * 1.666),
                  ),
                  child: Center(
                    child: Text(
                      AppStrings.addRecord,
                      style: AppTextStyles.smallTextStyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.blockWidth * 4.444,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '7/8 hours',
                  style: AppTextStyles.mediumBoldTextStyle,
                ),
                Text(
                  '10 PM - 6 AM',
                  style: AppTextStyles.verySmallTextStyle,
                ),
                RatingBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
