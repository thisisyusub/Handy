import 'package:flutter/material.dart';

class CustomProgressValue extends StatelessWidget {
  CustomProgressValue({
    @required this.title,
    @required this.totalPart,
    @required this.completedPart,
  }) : assert(
          title != null &&
              totalPart != null &&
              completedPart != null &&
              completedPart <= totalPart,
        );

  final int completedPart;
  final int totalPart;
  final String title;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$completedPart/',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: '$totalPart ',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF818181),
            ),
          ),
          TextSpan(
            text: title,
            style: TextStyle(
              fontSize: 14,
              color: const Color(0xFF818181),
            ),
          ),
        ],
      ),
    );
  }
}
