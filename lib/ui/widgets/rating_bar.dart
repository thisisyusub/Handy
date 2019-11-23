import 'package:flutter/material.dart';
import 'package:heathier/ui/shared/app_colors.dart';
import 'package:heathier/utils/size_config.dart';

class RatingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            Icons.star,
            color: AppColors.starColor,
            size: SizeConfig.blockHeight * 2 * SizeConfig.textScaleFactor,
          ),
          Icon(
            Icons.star,
            color: AppColors.starColor,
            size: SizeConfig.blockHeight * 2 * SizeConfig.textScaleFactor,
          ),
          Icon(
            Icons.star,
            color: AppColors.starColor,
            size: SizeConfig.blockHeight * 2 * SizeConfig.textScaleFactor,
          ),
          Icon(
            Icons.star,
            color: AppColors.starColor,
            size: SizeConfig.blockHeight * 2 * SizeConfig.textScaleFactor,
          ),
          Icon(
            Icons.star,
            color: AppColors.starColor,
            size: SizeConfig.blockHeight * 2 * SizeConfig.textScaleFactor,
          ),
        ],
      ),
    );
  }
}
