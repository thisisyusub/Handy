import 'package:flutter/material.dart';

import '../../shared/app_colors.dart';

/// progress indicator of home items
class CustomProgressIndicator extends StatelessWidget {
  /// providers instance of [CustomProgressIndicator]
  CustomProgressIndicator(this.progressFactor) : assert(progressFactor <= 1.0);

  /// defines complete part of progress
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
