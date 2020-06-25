import 'package:flutter/material.dart';
import 'package:handy/constants/app_strings.dart';
import 'package:handy/constants/routes.dart';
import 'package:handy/presentation_layer/shared/app_colors.dart';
import 'package:handy/presentation_layer/shared/app_text_styles.dart';
import 'package:handy/utils/size_config.dart';

class SetCalorieTargetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed(
                    Routes.SetCalorieTarget,
                  ),
                  child: Text(
                    AppStrings.save,
                    style: AppTextStyles.fontSize14MediumStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
