import 'package:flutter/material.dart';
import 'package:heathier/ui/shared/app_colors.dart';
import 'package:heathier/utils/size_config.dart';

class CustomProgressBar extends StatelessWidget {
  final Color progressColor;

  CustomProgressBar(this.progressColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.blockWidth * 14.722,
      height: SizeConfig.blockHeight * 1.5625,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: AppColors.progressBarBackgroundColor,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.30,
            child: Container(
              decoration: BoxDecoration(
                color: progressColor,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
