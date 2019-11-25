import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heathier/core/constants/app_strings.dart';
import 'package:heathier/ui/shared/app_colors.dart';
import 'package:heathier/ui/shared/app_icons.dart';
import 'package:heathier/ui/shared/app_text_styles.dart';
import 'package:heathier/utils/glass_painter.dart';
import 'package:heathier/utils/size_config.dart';

class WaterListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        SizeConfig.blockWidth * 5,
        SizeConfig.blockHeight * 2.34375,
        SizeConfig.blockWidth * 5,
        SizeConfig.blockHeight,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              SvgPicture.asset(
                AppIcons.waterDrop,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                AppStrings.water,
                style: AppTextStyles.mediumBoldTextStyle,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.remove),
              Container(
                width: SizeConfig.blockWidth * 11 * SizeConfig.textScaleFactor,
                height: SizeConfig.blockHeight * 6 * SizeConfig.textScaleFactor,
                child: CustomPaint(
                  painter: GlassPainter(),
                  child: Center(
                    child: Text(
                      '10',
                      style: AppTextStyles.mediumBoldTextStyle,
                    ),
                  ),
                ),
              ),
              Icon(Icons.add),
            ],
          ),
          Text(
            '10/10',
            style: AppTextStyles.verySmallTextStyle,
          ),
        ],
      ),
    );
  }
}
