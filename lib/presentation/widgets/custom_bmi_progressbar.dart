import 'package:flutter/material.dart';

import '../shared/app_colors.dart';
import '../../utils/size_config.dart';

class CustomBMIProgressBar extends StatelessWidget {
  final double indicatorValue;

  CustomBMIProgressBar(this.indicatorValue);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 6.5 * SizeConfig.textScaleFactor,
      width: SizeConfig.widthMultiplier * 22 * SizeConfig.textScaleFactor,
      child: Stack(
        children: <Widget>[
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: SizeConfig.widthMultiplier *
                  16.666 *
                  SizeConfig.textScaleFactor,
              height: SizeConfig.heightMultiplier *
                  1.875 *
                  SizeConfig.textScaleFactor,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.bmiProgressBarLowColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          bottomLeft: Radius.circular(6),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.bmiProgressBarNormalColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.bmiProgressBarHighColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(6),
                          bottomRight: Radius.circular(6),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: SizeConfig.textScaleFactor * 20,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'normal',
                ),
                Icon(
                  Icons.arrow_downward,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
