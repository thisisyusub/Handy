import 'package:flutter/material.dart';

import '../shared/app_colors.dart';
import '../shared/app_text_styles.dart';

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
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: colored ? AppColors.kPrimaryColor : AppColors.appBackgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          width: 1,
          color: AppColors.kHandyTextColor,
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
