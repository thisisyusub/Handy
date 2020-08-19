import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './android_alert_dialog.dart';
import './ios_alert_dialog.dart';

/// builds [PlarformAlertDialog] according to device OS
abstract class PlatformAlertDialog {
  /// returns instance of [PlatformAlertDialog]
  factory PlatformAlertDialog(TargetPlatform targetPlatform) {
    switch (targetPlatform) {
      case TargetPlatform.android:
        return AndroidAlertDialog();
      case TargetPlatform.iOS:
        return IosAlertDialog();
      default:
        return null;
    }
  }

  /// builds widget according to parameters
  Widget build({
    @required BuildContext context,
    Widget title,
    Widget content,
  });
}
