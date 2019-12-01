import 'package:flutter/material.dart';
import 'package:heathier/presentation_layer/shared/app_colors.dart';
import 'package:heathier/utils/size_config.dart';

class CustomProgressBar extends StatelessWidget {
  final double indicatorValueFactor;

  CustomProgressBar(this.indicatorValueFactor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.blockWidth * 16.666 * SizeConfig.textScaleFactor,
      height: SizeConfig.blockHeight * 1.875 * SizeConfig.textScaleFactor,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: AppColors.progressBarBackgroundColor,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          FractionallySizedBox(
            widthFactor: indicatorValueFactor,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.progressBarIndicatorColor,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
