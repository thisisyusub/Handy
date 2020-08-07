import 'package:flutter/material.dart';

extension ResponsiveHelper on BuildContext {
  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;
}
