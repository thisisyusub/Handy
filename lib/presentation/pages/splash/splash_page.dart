import 'package:flutter/material.dart';
import '../../../utils/extensions/translator.dart';

/// Page to shown loading when the app is started
/// it will be shown until app checks authentication
class SplashPage extends StatelessWidget {
  /// Provides instance of [SplashPage]
  const SplashPage();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'handy'.translate(context),
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
