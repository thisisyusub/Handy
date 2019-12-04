import 'package:flutter/material.dart';
import 'package:heathier/presentation_layer/shared/app_colors.dart';
import 'package:heathier/utils/size_config.dart';

class WaterActionButton extends StatelessWidget {
  final String title;
  final Function function;

  WaterActionButton(this.title, this.function);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 3.125 * SizeConfig.textScaleFactor,
      width: SizeConfig.widthMultiplier * 5.555 * SizeConfig.textScaleFactor,
      decoration: BoxDecoration(
        color: AppColors.multiSelectionButtonColor,
        borderRadius: BorderRadius.circular(
          SizeConfig.heightMultiplier * 2.5 * SizeConfig.textScaleFactor,
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
