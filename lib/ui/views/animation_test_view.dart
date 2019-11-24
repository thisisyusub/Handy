import 'package:flutter/material.dart';
import 'package:heathier/utils/animated_glass_painter.dart';

class AnimationTestView extends StatefulWidget {
  @override
  _AnimationTestViewState createState() => _AnimationTestViewState();
}

class _AnimationTestViewState extends State<AnimationTestView>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    animation = Tween<double>(
      begin: 0.0,
      end: 10.0,
    ).animate(animationController);

    animation.addListener(() {
      setState(() {});
    });

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.reverse();
        // animationController.reset();
      } else if (status == AnimationStatus.dismissed) {
        animationController.forward();
      }
    });

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Test'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: CustomPaint(
            painter: AnimatedGlassPainter(animation.value),
            child: Center(
              child: Text(
                (10 - animation.value.floor()).toString(),
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
}
