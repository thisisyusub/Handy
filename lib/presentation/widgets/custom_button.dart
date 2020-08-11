import 'package:flutter/material.dart';

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
    return Padding(
      padding: margin,
      child: Material(
        borderRadius: BorderRadius.circular(18),
        color: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(18),
          splashColor: Theme.of(context).primaryColorLight,
          child: FractionallySizedBox(
            widthFactor: widthFactor,
            child: Center(
              child: Padding(
                padding: padding,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.button,
                  overflow: TextOverflow.fade,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
