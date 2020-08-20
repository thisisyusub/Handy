import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './alert_dialog/platform_alert_dialog.dart';

/// handles renders of [Platform Aware Widgets]
abstract class PlatformAwareWidgetsFactory {
  PlatformAwareWidgetsFactory._();

  /// creates and shows [AlertDialog] based on [TargetPlatform]
  static Future<void> showAndBuildAlertDialog({
    @required BuildContext context,
    Widget title,
    Widget content,
  }) {
    final dialog = PlatformAlertDialog(Theme.of(context).platform).build(
      context: context,
      title: title,
      content: content,
    );

    return showDialog<void>(
      context: context,
      builder: (_) => dialog,
    );
  }
}
