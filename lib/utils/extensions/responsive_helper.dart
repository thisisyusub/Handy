import 'package:flutter/material.dart';

/// extension to handle responsiveness
extension ResponsiveHelper on BuildContext {
  /// current [textScaleFactor] of device
  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;

  /// [screen height] of device
  double get screenHeight => MediaQuery.of(this).size.height;

  /// [screen width] of device
  double get screenWidth => MediaQuery.of(this).size.width;

  /// [device pixel ration] of device
  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;
}
