import 'package:flutter/material.dart';

extension TextScaleFactorHelper on BuildContext {
  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;
}
