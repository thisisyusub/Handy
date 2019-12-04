import 'package:flutter/material.dart';
import 'package:heathier/presentation_layer/shared/app_colors.dart';
import 'package:heathier/presentation_layer/shared/app_text_styles.dart';
import 'package:heathier/utils/size_config.dart';

class ChipItem extends StatelessWidget {
  final String label;
  final double width;
  final double height;
  final bool colored;
  final double borderRadius;
  final bool isResizable;
  final IconData buttonIcon;
  final bool isIconButton;

  ChipItem({
    this.label,
    this.width,
    this.height,
    this.colored = false,
    this.borderRadius,
    this.isResizable = true,
    this.buttonIcon,
    this.isIconButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * (isResizable ? SizeConfig.textScaleFactor : 1),
      height: height * (isResizable ? SizeConfig.textScaleFactor : 1),
      decoration: BoxDecoration(
        color: colored
            ? AppColors.customButtonBackgroundColor
            : AppColors.appBackgroundColor,
        borderRadius: BorderRadius.circular(
          borderRadius * SizeConfig.textScaleFactor,
        ),
        border: Border.all(
          width: 1,
          color: AppColors.customButtonTextColor,
        ),
      ),
      child: Center(
        child: isIconButton
            ? Icon(buttonIcon)
            : Text(
                label,
                style: AppTextStyles.fontSize12RegularStyle,
                softWrap: true,
                textAlign: TextAlign.center,
              ),
      ),
    );
  }
}
