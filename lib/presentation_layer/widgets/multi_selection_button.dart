import 'package:flutter/material.dart';
import 'package:heathier/presentation_layer/shared/app_colors.dart';
import 'package:heathier/presentation_layer/shared/app_text_styles.dart';
import 'package:heathier/utils/size_config.dart';

class MultiSelectionButton extends StatelessWidget {
  final String title;
  final isSelected;
  final Function selectFunction;

  MultiSelectionButton({
    this.title,
    this.isSelected,
    this.selectFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          GestureDetector(
            onTap: () => selectFunction(false, title),
            child: Container(
              width:
                  SizeConfig.blockWidth * 54.166 * SizeConfig.textScaleFactor,
              height:
                  SizeConfig.blockHeight * 4.6875 * SizeConfig.textScaleFactor,
              decoration: BoxDecoration(
                color: isSelected
                    ? AppColors.signUpButtonColor
                    : AppColors.multiSelectionButtonColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  title,
                  style: AppTextStyles.fontSize12Style,
                ),
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.blockHeight * 2.5,
          ),
        ],
      ),
    );
  }
}
