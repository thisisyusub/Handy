import 'package:flutter/material.dart';
import 'package:handy/presentation/shared/app_colors.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton({
    @required this.title,
    this.onTap,
  });

  final String title;
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
