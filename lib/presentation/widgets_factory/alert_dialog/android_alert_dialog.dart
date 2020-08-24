import 'package:flutter/material.dart';
import './platform_alert_dialog.dart';

/// builds [AlertDialog] for Android device
class AndroidAlertDialog implements PlatformAlertDialog {
  @override
  Widget build({BuildContext context, Widget title, Widget content}) {
    return AlertDialog(
      title: title,
      content: content,
      actions: [
        FlatButton(
          child: Text('Close'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}
