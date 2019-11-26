import 'package:flutter/material.dart';
import 'package:heathier/ui/shared/app_colors.dart';
import 'package:heathier/ui/shared/app_text_styles.dart';
import 'package:heathier/utils/size_config.dart';

class ChipItem extends StatelessWidget {
  final String label;
  final double width;
  final double height;

  ChipItem({
    this.label,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: SizeConfig.blockWidth * 2,
        vertical: 0,
      ),
      width: width * SizeConfig.textScaleFactor,
      height: height * SizeConfig.textScaleFactor,
      decoration: BoxDecoration(
        color: AppColors.multiSelectionButtonColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          label,
          style: AppTextStyles.fontSize12Style,
        ),
      ),
    );
  }
}
