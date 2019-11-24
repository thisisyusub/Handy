import 'package:flutter/widgets.dart';
import 'package:heathier/ui/shared/app_colors.dart';

class AnimatedGlassPainter extends CustomPainter {
  final double value;

  AnimatedGlassPainter(this.value);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = AppColors.topBarColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    Path squarePath = Path();
    squarePath.moveTo(0, size.height);
    squarePath.lineTo(0, 0);
    squarePath.lineTo(size.width, 0);
    squarePath.lineTo(size.width, size.height);
    squarePath.lineTo(0, size.height);
    canvas.drawPath(squarePath, paint);

    Path waterLevelPath = Path();
    waterLevelPath.addRect(
      Rect.fromLTWH(0, (size.height * value) / 10, size.width,
          (size.height * (10 - value)) / 10),
    );

    paint.style = PaintingStyle.fill;

    canvas.drawPath(waterLevelPath, paint);
    squarePath.close();

    print("floor: ${value.floor()}");
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
