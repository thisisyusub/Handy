import 'package:flutter/material.dart';
import 'package:handy/presentation_layer/shared/app_colors.dart';
import 'package:handy/presentation_layer/shared/app_text_styles.dart';
import 'package:handy/utils/size_config.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  final EdgeInsets margin;

  CustomButton({
    @required this.width,
    @required this.height,
    @required this.title,
    @required this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * (SizeConfig.textScaleFactor),
      height: height * SizeConfig.textScaleFactor,
      margin: margin,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
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
