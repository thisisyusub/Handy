import 'package:flutter/material.dart';
import 'package:heathier/ui/shared/app_colors.dart';
import 'package:heathier/ui/shared/app_text_styles.dart';
import 'package:heathier/utils/size_config.dart';

class GoalItem extends StatelessWidget {
  final IconData goalIcon;
  final String goalTitle;
  final bool isPainterIcon;
  final CustomPainter customPainter;
  final bool isMoon;

  GoalItem({
    this.goalIcon,
    this.customPainter,
    @required this.goalTitle,
    this.isPainterIcon = false,
    this.isMoon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.blockWidth * 25 * SizeConfig.textScaleFactor,
      height: SizeConfig.blockHeight * 4.6875,
      decoration: BoxDecoration(
        color: AppColors.goalItemBackgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          isPainterIcon
              ? Container(
                  height: SizeConfig.blockHeight * (isMoon ? 4 : 3),
                  width: SizeConfig.blockWidth * (isMoon ? 7 : 6),
                  child: CustomPaint(
                    painter: customPainter,
                  ),
                )
              : Icon(
                  goalIcon,
                  color: AppColors.heartColor,
                ),
          Text(
            goalTitle,
            style: AppTextStyles.smallBoldTextStyle,
          ),
        ],
      ),
    );
  }
}
