import 'package:flutter/material.dart';
import 'package:heathier/ui/shared/app_colors.dart';

class MoonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = AppColors.moonColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    Path path = Path();

    path.moveTo(size.width / 10, (size.height * 7) / 10);

    path.cubicTo(
      (size.width * 5) / 10,
      size.height,
      size.width,
      (size.height * 5) / 10,
      (size.width * 5) / 10,
      size.height / 10,
    );

    path.cubicTo(
      (size.width * 7) / 10,
      (size.height * 5) / 10,
      (size.width * 5) / 10,
      (size.height * 7) / 10,
      size.width / 10,
      (size.height * 7) / 10,
    );

    paint.style = PaintingStyle.fill;
    canvas.drawPath(path, paint);
    path.close();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
