import 'package:flutter/material.dart';

import '../shared/app_colors.dart';

/// Class to create custom button of [Handy]
class CustomButton extends StatelessWidget {
  /// value to size width of button
  final double widthFactor;

  /// text of button
  final String title;

  /// margin for button
  final EdgeInsets margin;

  /// value to get the button is enabled or not
  final bool disabled;

  /// padding for [title] of [CustomButton]
  final EdgeInsets padding;

  /// Constructor to assign values of [CustomButton]
  CustomButton({
    @required this.widthFactor,
    @required this.title,
    @required this.padding,
    this.margin,
    this.disabled,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: widthFactor,
      child: Container(
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          color: disabled != null ? Colors.grey : AppColors.primaryColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.button,
            overflow: TextOverflow.fade,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
