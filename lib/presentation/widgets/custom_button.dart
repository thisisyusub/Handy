import 'package:flutter/material.dart';
import 'package:responsive_x/responsive_x.dart';

import '../shared/app_colors.dart';
import '../shared/app_text_styles.dart';
import '../../utils/extensions/text_scale_factor_helper.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final String title;
  final EdgeInsets padding;
  final bool disabled;

  CustomButton({
    @required this.width,
    @required this.title,
    @required this.padding,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * context.textScaleFactor,
      decoration: BoxDecoration(
        color: disabled ? Colors.grey : AppColors.primaryColor,
        borderRadius: BorderRadius.circular(context.computeWidth(18)),
      ),
      child: Padding(
        padding: padding,
        child: Center(
          child: Text(
            title,
            style: AppTextStyles.fontSize14MediumStyle.copyWith(
              fontSize: context.computeFontSize(14),
            ),
            overflow: TextOverflow.fade,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}