import 'package:flutter/material.dart';
import 'package:heathier/ui/shared/app_colors.dart';
import 'package:heathier/ui/shared/app_text_styles.dart';
import 'package:heathier/utils/size_config.dart';

class ProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: SizeConfig.blockHeight * 2.1875 * SizeConfig.textScaleFactor,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 0.5,
                  color: AppColors.progressBarBorderColor,
                ),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.66,
              child: Container(
                width: double.infinity,
                height: SizeConfig.blockHeight * 2.1875 * SizeConfig.textScaleFactor,
                decoration: BoxDecoration(
                  color: AppColors.heartColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(
                        right: SizeConfig.blockWidth,
                      ),
                      child: Text(
                        '800',
                        style: AppTextStyles.smallTextStyle,
                      ),
                    )),
              ),
            ),
          ],
        ),
        SizedBox(
          height: SizeConfig.blockHeight * 1.09375,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('0'),
            Text('1200'),
          ],
        ),
      ],
    );
  }
}
