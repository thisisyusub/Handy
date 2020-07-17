import 'package:flutter/material.dart';

import '../shared/app_colors.dart';
import '../shared/app_text_styles.dart';
import '../../utils/size_config.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  final EdgeInsets margin;
  final bool disabled;

  CustomButton({
    @required this.width,
    @required this.height,
    @required this.title,
    @required this.margin,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * (SizeConfig.textScaleFactor),
      height: height * SizeConfig.textScaleFactor,
      margin: margin,
      decoration: BoxDecoration(
        color: disabled ? Colors.grey : AppColors.primaryColor,
        borderRadius: BorderRadius.circular(
          SizeConfig.widthMultiplier * 5 * SizeConfig.textScaleFactor,
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: AppTextStyles.fontSize14MediumStyle,
        ),
      ),
    );
  }
}
