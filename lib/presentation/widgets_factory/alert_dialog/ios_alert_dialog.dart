import 'package:flutter/cupertino.dart';
import './platform_alert_dialog.dart';

/// builds [CupertinoAlertDialog] for iOS device
class IosAlertDialog implements PlatformAlertDialog {
  @override
  Widget build({BuildContext context, Widget title, Widget content}) {
    return CupertinoAlertDialog(
      title: title,
      content: content,
      actions: [
        CupertinoButton(
          child: Text('Close'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}
