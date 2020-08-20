import 'package:flutter/material.dart';
import 'package:handy/presentation/shared/app_colors.dart';

class CustomProgressIndicator extends StatelessWidget {
  CustomProgressIndicator(this.progressFactor) : assert(progressFactor <= 1.0);

  final double progressFactor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 15,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        FractionallySizedBox(
          widthFactor: progressFactor,
          child: Container(
            height: 15,
            decoration: BoxDecoration(
              color: AppColors.primaryColorLight,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
      ],
    );
  }
}
