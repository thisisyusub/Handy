import 'package:flutter/material.dart';
import 'package:heathier/core/constants/app_strings.dart';
import 'package:heathier/ui/shared/app_colors.dart';
import 'package:heathier/ui/shared/app_text_styles.dart';
import 'package:heathier/utils/size_config.dart';

class TopBarTopHalf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FittedBox(
                  child: Text(
                    AppStrings.dailyMessagePart1,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: AppTextStyles.bigTextStyle,
                  ),
                ),
                FittedBox(
                  child: Text(
                    AppStrings.dailyMessagePart2,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: AppTextStyles.bigTextStyle,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 5,
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
              width: SizeConfig.blockWidth * 21,
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
                  AppStrings.profileButton,
                  style: AppTextStyles.smallTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
