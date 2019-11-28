import 'package:flutter/material.dart';
import 'package:heathier/contants/app_strings.dart';
import 'package:heathier/presentation_layer/shared/app_colors.dart';
import 'package:heathier/presentation_layer/shared/app_text_styles.dart';
import 'package:heathier/utils/size_config.dart';

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.blockWidth * 14.722 * SizeConfig.textScaleFactor,
      height: SizeConfig.blockHeight * 3 * SizeConfig.textScaleFactor,
      decoration: BoxDecoration(
        color: AppColors.multiSelectionButtonColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          AppStrings.add,
          style: AppTextStyles.fontSize10withColorStyle,
        ),
      ),
    );
  }
}
