import 'package:flutter/material.dart';

import '../../shared/app_colors.dart';

/// custom button for home items
class CustomRaisedButton extends StatelessWidget {
  /// provides instance of [CustomRaisedButton]
  CustomRaisedButton({
    @required this.title,
    this.onTap,
  });

  /// title of button
  final String title;

  /// callback for button's tap
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        splashColor: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF1A1A1A), width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(title),
          ),
        ),
      ),
    );
  }
}
