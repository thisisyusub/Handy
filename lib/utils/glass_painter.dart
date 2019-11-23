import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:heathier/ui/shared/app_colors.dart';

class GlassPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = AppColors.glassColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    Path path = Path();

    path.moveTo((size.width / 10) * 2, size.height);
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo((size.width / 10) * 8, size.height);

    paint.style = PaintingStyle.fill;
    canvas.drawPath(path, paint);
    path.close();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
